//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "address": "0x0000000000000000000000000000000000008010",
//!             "fallback": true,
//!             "calldata": []
//!         }
//!     ],
//!     "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

/**
 * @author Matter Labs
 */
contract Test {
    uint256 constant PERMANENT_ERGS_COST = 100;
    uint256 constant INTERNAL_KECCAK_ROUND_ERGS_COST = 100;
    uint256 constant MAX_PREIMAGE_BYTES_LENGTH = 1024;
    uint256 constant BLOCK_SIZE = 136;
    uint32 constant INPUT_OFFSET_IN_WORDS = 4;
    uint32 constant OUTPUT_OFFSET_IN_WORDS = 0;
    uint32 constant OUTPUT_LENGTH_IN_WORDS = 1;

    address constant CODE_ADDRESS_CALL_ADDRESS = address((1<<16) - 2);
    address constant PRECOMPILE_CALL_ADDRESS = address((1<<16) - 3);

    fallback() external {
        address codeAddress = getCodeAddress();
        // Check that we are NOT in delegatecall
        require(codeAddress == address(this));

        uint256 bytesSize;
        uint256 offset;

        assembly {
            bytesSize := calldatasize()
            offset := mload(0x40)
        }

        require(offset == 128);

        require(bytesSize <= MAX_PREIMAGE_BYTES_LENGTH);

        // now we do manual memory management

        unchecked {
            uint256 padLen = BLOCK_SIZE - bytesSize % BLOCK_SIZE;
            uint256 paddedByteSize = bytesSize + padLen;
            assert(paddedByteSize % BLOCK_SIZE == 0); // can deleted later one
            uint64 numRounds = uint64(paddedByteSize / BLOCK_SIZE);

            // manual memory copy and management, as we do not care about Solidity allocations
            uint32 inputLengthInWords = uint32(paddedByteSize / 32);
            if (paddedByteSize % 32 != 0) {
                    inputLengthInWords += 1;
            }

            assembly {
                calldatacopy(offset, 0x00, bytesSize)
            }

            if (padLen == 1) {
                // write 0x81 at the end
                assembly {
                    mstore(add(offset, bytesSize), 0x8100000000000000000000000000000000000000000000000000000000000000) // we do not care about what is after
                }
            } else {
                assembly {
                    mstore(add(offset,bytesSize), 0x0100000000000000000000000000000000000000000000000000000000000000)
                    mstore(sub(add(offset, paddedByteSize), 1), 0x8000000000000000000000000000000000000000000000000000000000000000)
                }
            }

            uint256 precompileParams = packPrecompileParams(
                INPUT_OFFSET_IN_WORDS,
                inputLengthInWords,
                OUTPUT_OFFSET_IN_WORDS,
                OUTPUT_LENGTH_IN_WORDS,
                numRounds
            );

            uint256 ergsToPay = PERMANENT_ERGS_COST + INTERNAL_KECCAK_ROUND_ERGS_COST * uint256(numRounds);
            bool success = precompileCall(precompileParams, uint32(ergsToPay));
            require(success);

            assembly {
                return(0, 32)
            }
        }
    }

    function packPrecompileParams(
        uint32 inputMemoryOffset,
        uint32 inputMemoryLength,
        uint32 outputMemoryOffset,
        uint32 outputMemoryLength,
        uint64 perPrecompileInterpreted
    ) internal pure returns (uint256 rawParams) {
        unchecked {
            rawParams = inputMemoryOffset;
            rawParams |= uint256(inputMemoryLength) << 32;
            rawParams |= uint256(outputMemoryOffset) << 64;
            rawParams |= uint256(outputMemoryLength) << 96;
            rawParams |= uint256(perPrecompileInterpreted) << 192;
        }
    }

    function precompileCall(uint256 _rawParams, uint32 _ergsToBurn) internal view returns (bool success) {
        address callAddr = PRECOMPILE_CALL_ADDRESS;

        // After `precompileCall` ergs will be burned down to 0 if there are not enough of them,
        // thats why it should be checked before the call.
        require(gasleft() >= _ergsToBurn);
        assembly {
            success := staticcall(_rawParams, callAddr, _ergsToBurn, 0, 0, 0)
        }
    }

    function getCodeAddress() internal view returns (address addr) {
        address callAddr = CODE_ADDRESS_CALL_ADDRESS;
        assembly {
            addr := staticcall(0, callAddr, 0, 0, 0, 0)
        }
    }

}

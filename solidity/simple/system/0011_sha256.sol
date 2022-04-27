//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "address": "0x0000000000000000000000000000000000000011",
//!             "fallback": true,
//!             "calldata": ["0x00"]
//!         }
//!     ],
//!     "expected": [
//!         "0x6e340b9cffb37a989ca544e6bb780a2c78901d3fb33738768511a30617afa01d"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

/**
 * @author Matter Labs
 */
contract Test {
    uint256 constant PERMANENT_ERGS_COST = 100;
    uint256 constant INTERNAL_SHA256_ROUND_ERGS_COST = 50;
    uint256 constant MAX_PREIMAGE_BYTES_LENGTH = 1024;
    uint256 constant BLOCK_SIZE = 64;
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
            uint256 msgBitlenWord = (bytesSize * 8) << (256-64); // for padding
            uint256 lastBlockSize = bytesSize % BLOCK_SIZE;
            uint256 roughPadLen = BLOCK_SIZE - lastBlockSize;
            uint256 roughPaddedByteSize = bytesSize + roughPadLen;

            assert(roughPaddedByteSize % BLOCK_SIZE == 0); // can deleted later one
            uint64 numRounds = uint64(roughPaddedByteSize / BLOCK_SIZE);
            if (lastBlockSize > (64 - 8 - 1)) {
                // we need another round all together
                numRounds += 1;
                roughPaddedByteSize += 64;
            }
            uint256 offsetForBitlenWord = roughPaddedByteSize - 8;

            // manual memory copy and management, as we do not care about Solidity allocations
            uint32 inputLengthInWords = uint32(roughPaddedByteSize / 32);

            assembly {
                calldatacopy(offset, 0x00, bytesSize)
            }

            // write 0x80000... as padding
            assembly {
                mstore(add(offset, bytesSize), 0x8000000000000000000000000000000000000000000000000000000000000000) // we do not care about what is after
            }
            // then will be some zeroes, and BE encoded bit length
            assembly {
                mstore(add(offset, offsetForBitlenWord), msgBitlenWord) // we do not care about what is after
            }

            uint256 precompileParams = packPrecompileParams(
                INPUT_OFFSET_IN_WORDS,
                inputLengthInWords,
                OUTPUT_OFFSET_IN_WORDS,
                OUTPUT_LENGTH_IN_WORDS,
                numRounds
            );

            uint256 ergsToPay = PERMANENT_ERGS_COST + INTERNAL_SHA256_ROUND_ERGS_COST * uint256(numRounds);
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

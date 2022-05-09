//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "address": "0x0000000000000000000000000000000000000012",
//!             "fallback": true,
//!             "calldata": [
//!                 "0x1da44b586eb0729ff70a73c326926f6ed5a25f5b056e7f47fbc6e58d86871655",
//!                 "0x1c",
//!                 "0xb91467e570a6466aa9e9876cbcd013baba02900b8979d43fe208a4a4f339f5fd",
//!                 "0x6007e74cd82e037b800186422fc2da167c747ef045e5d18a5f5d4300f8e1a029"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0000000000000000000000002c7536e3605d9c16a7a3d7b1898e529396a65c23"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

/**
 * @author Matter Labs
 */
contract Test {
    uint256 constant PERMANENT_ERGS_COST = 3000;
    uint32 constant INPUT_OFFSET_IN_WORDS = 4;
    uint32 constant INPUT_LENGTH_IN_WORDS = 4;
    uint32 constant OUTPUT_OFFSET_IN_WORDS = 0;
    uint32 constant OUTPUT_LENGTH_IN_WORDS = 1;
    // uint256 constant SECP256K1_FIELD_MODULUS = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F;
    uint256 constant SECP256K1_GROUP_SIZE = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141;
    uint256 constant SECP256K1_GROUP_SIZE_HALFED = 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0;

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
        bool is_valid = true;
        if (bytesSize < 128) {
            is_valid = false;
        }

        // now we do manual memory management

        unchecked {
            bytes32 digest;
            uint256 v;
            uint256 r;
            uint256 s;

            // manually decode
            assembly {
                digest := calldataload(0)
                v := calldataload(32)
                r := calldataload(64)
                s := calldataload(96)
            }

            if (v != 27 && v != 28) {
                is_valid = false;
            }
            v -= 27;

            if (s == 0 || s > SECP256K1_GROUP_SIZE_HALFED) {
            // if (s == 0 || s >= SECP256K1_GROUP_SIZE) { // if we want legacy
                is_valid = false;
            }

            if (r == 0 || s >= SECP256K1_GROUP_SIZE) {
                is_valid = false;
            }

            if (!is_valid) {
                assembly {
                    return(0, 0)
                }
            }

            // re-layout
            assembly {
                mstore(offset, digest)
                mstore(add(offset, 0x20), v)
                mstore(add(offset, 0x40), r)
                mstore(add(offset, 0x60), s)
            }

            uint256 precompileParams = packPrecompileParams(
                INPUT_OFFSET_IN_WORDS,
                INPUT_LENGTH_IN_WORDS,
                OUTPUT_OFFSET_IN_WORDS,
                OUTPUT_LENGTH_IN_WORDS,
                0
            );

            uint256 ergsToPay = PERMANENT_ERGS_COST;
            bool success = precompileCall(precompileParams, uint32(ergsToPay));
            require(success);

            // internal check for the ECRECOVER implementation routine
            uint256 success_inner;
            assembly {
                success_inner := mload(0)
            }

            if (success_inner != 1) {
                // overwrite whatever we have got
                assembly {
                    return(0, 0)
                }
            }

            assembly {
                return(32, 32)
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

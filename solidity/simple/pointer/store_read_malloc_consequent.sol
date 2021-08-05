//! { "cases": [ {
//!     "entry": "_default",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function _default() public pure returns(uint64) {
        return main(20, 22);
    }

    function malloc(uint16 size) private pure returns(uint24) {
        uint24 memory_pointer = 2 * 32;
        uint24 return_pointer;
        assembly {
            return_pointer := mload(memory_pointer)
            mstore(memory_pointer, add(return_pointer, mul(size, 32)))
        }
        return return_pointer;
    }

    function main(uint8 a, uint8 b) private pure returns(uint8 result) {
        uint24 memory_pointer = 2 * 32;
        assembly {
            mstore(memory_pointer, 0x80)
        }

        uint24 pointer_a = malloc(1);
        uint24 pointer_b = malloc(1);

        assembly {
            mstore(pointer_a, a)
            mstore(pointer_b, b)
            result := add(mload(pointer_a), mload(pointer_b))
        }
    }
}

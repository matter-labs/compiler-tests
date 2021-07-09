//! { "cases": [ {
//!     "entry": "_default",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function _default() public pure returns(uint64) {
        return main(10, 15, 17);
    }

    function malloc(uint16 size) private pure returns(uint16 returnPointer) {
        uint16 memoryPointer = 2 * 32;
        size *= 32;
        assembly {
            returnPointer := mload(memoryPointer)
            mstore(memoryPointer, add(returnPointer, size))
        }
    }

    function main(uint8 a, uint8 b, uint8 c) private pure returns(uint8 result) {
        uint16 memoryPointer = 2 * 32;
        assembly {
            mstore(memoryPointer, 128)
        }
        uint16 pointerA = malloc(1);
        assembly {
            mstore(pointerA, a)
        }
        uint16 pointerB = malloc(1);
        assembly {
            mstore(pointerB, b)
        }
        uint16 pointerC = malloc(1);
        assembly {
            mstore(pointerC, c)
        }
        assembly {
            result := add(mload(pointerA), add(mload(pointerB), mload(pointerC)))
        }
    }
}
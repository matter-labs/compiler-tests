//! { "ignore": true,
//! "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "65500", "18"
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Entry {
        uint64 key;
        uint64 value;
    }

    function main(uint16 a, uint16 b) public pure returns(uint64) {
        uint24 memory_pointer = 2 * 32;
        assembly {
            mstore(memory_pointer, a)
        }

        uint24 return_pointer;
        assembly {
            return_pointer := mload(memory_pointer)
            mstore(memory_pointer, add(return_pointer, b))
        }

        return 1;
    }
}

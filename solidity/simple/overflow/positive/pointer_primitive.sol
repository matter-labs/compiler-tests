//! { "ignore": true, "cases": [ {
//!     "entry": "_default",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function _default() public pure returns(uint64) {
        return main(65500, 36);
    }

    function main(uint16 a, uint16 b) private pure returns(uint64) {
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

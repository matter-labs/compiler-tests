//! { "ignore": true, "cases": [ {
//!     "entry": "entry",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64 result) {
        uint24 ptr = 0;
        assembly {
            result := mload(ptr)
        }
    }
}
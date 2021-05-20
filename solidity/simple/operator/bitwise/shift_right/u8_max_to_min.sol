//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(128);
    }

    function main(uint8 a) private pure returns(uint8) {
        return a >> 7;
    }
}
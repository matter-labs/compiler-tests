//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(-9223372036854775808);
    }

    function main(int64 witness) private pure returns(int64) {
        return witness - 1;
    }
}
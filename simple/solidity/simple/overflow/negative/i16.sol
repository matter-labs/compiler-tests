//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(-32768);
    }

    function main(int16 witness) private pure returns(int16) {
        return witness - 1;
    }
}
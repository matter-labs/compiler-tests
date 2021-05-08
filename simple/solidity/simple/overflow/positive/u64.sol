//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(18446744073709551615);
    }

    function main(uint64 witness) private pure returns(uint64) {
        return witness + 1;
    }
}
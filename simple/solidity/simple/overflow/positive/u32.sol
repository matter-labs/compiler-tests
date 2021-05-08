//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(4294967295);
    }

    function main(uint32 witness) private pure returns(uint32) {
        return witness + 1;
    }
}
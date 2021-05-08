//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(57896044618658097711785492504343953926634992332820282019728792003956564819967);
    }

    function main(int256 witness) private pure returns(int256) {
        return witness + 1;
    }
}
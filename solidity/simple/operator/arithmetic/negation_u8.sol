//! { "ignore": true, "cases": [ {
//!     "entry": "zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": -42
//! }, {
//!     "entry": "max_to_min",
//!     "expected": -128
//! }, {
//!     "ignore": true, "entry": "overflow",
//!     "engines": ["zkevm"], "expected": "error"
//! }, {
//!     "ignore": true, "entry": "overflow_minimal",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero() public pure returns(uint64) {
        return main(0);
    }

    function ordinar() public pure returns(uint64) {
        return main(42);
    }

    function max_to_min() public pure returns(uint64) {
        return main(128);
    }

    function main(uint8 a) private pure returns(int8) {
        return -a;
    }
}

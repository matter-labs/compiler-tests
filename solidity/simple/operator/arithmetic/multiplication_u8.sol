//! { "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": 210
//! }, {
//!     "entry": "to_max",
//!     "expected": 255
//! }, {
//!     "ignore": true, "entry": "overflow",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "overflow_minimal",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero_zero() public pure returns(uint64) {
        return main(0, 0);
    }

    function ordinar() public pure returns(uint64) {
        return main(42, 5);
    }

    function to_max() public pure returns(uint64) {
        return main(51, 5);
    }

    function overflow() public pure returns(uint64) {
        return main(100, 5);
    }

    function overflow_minimal() public pure returns(uint64) {
        return main(32, 8);
    }

    function main(uint8 a, uint8 b) private pure returns(uint8) {
        return a * b;
    }
}

//! { "cases": [ {
//!     "ignore": true, "entry": "zero_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "ordinar_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "max_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "entry": "ordinar",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_max_remainder",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_next",
//!     "expected": 7
//! }, {
//!     "entry": "to_max",
//!     "expected": 255
//! }, {
//!     "entry": "to_one",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero_by_zero() public pure returns(uint64) {
        return main(0, 0);
    }

    function ordinar_by_zero() public pure returns(uint64) {
        return main(42, 0);
    }

    function max_by_zero() public pure returns(uint64) {
        return main(255, 0);
    }

    function ordinar() public pure returns(uint64) {
        return main(42, 7);
    }

    function ordinar_max_remainder() public pure returns(uint64) {
        return main(48, 7);
    }

    function ordinar_next() public pure returns(uint64) {
        return main(49, 7);
    }

    function to_max() public pure returns(uint64) {
        return main(255, 1);
    }

    function to_one() public pure returns(uint64) {
        return main(255, 255);
    }

    function main(uint8 a, uint8 b) private pure returns(uint8) {
        return a / b;
    }
}

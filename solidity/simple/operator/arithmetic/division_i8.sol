//! { "ignore": true, "cases": [ {
//!     "ignore": true, "entry": "zero_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "ordinar_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "min_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "ignore": true, "entry": "max_by_zero",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "entry": "ordinar_positive",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_negative_divided",
//!     "expected": -6
//! }, {
//!     "entry": "ordinar_negative_divider",
//!     "expected": -6
//! }, {
//!     "entry": "ordinar_negative_both",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_max_remainder",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_next",
//!     "expected": 7
//! }, {
//!     "entry": "to_min",
//!     "expected": -128
//! }, {
//!     "entry": "to_max",
//!     "expected": 127
//! }, {
//!     "entry": "to_one_positives",
//!     "expected": 1
//! }, {
//!     "entry": "to_one_negatives",
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

    function min_by_zero() public pure returns(uint64) {
        return main(-128, 0);
    }

    function max_by_zero() public pure returns(uint64) {
        return main(127, 0);
    }

    function ordinar_positive() public pure returns(uint64) {
        return main(42, 7);
    }

    function ordinar_negative_divided() public pure returns(uint64) {
        return main(-42, 7);
    }

    function ordinar_negative_divider() public pure returns(uint64) {
        return main(42, -7);
    }

    function ordinar_negative_both() public pure returns(uint64) {
        return main(-42, -7);
    }

    function ordinar_max_remainder() public pure returns(uint64) {
        return main(48, 7);
    }

    function ordinar_next() public pure returns(uint64) {
        return main(49, 7);
    }

    function to_min() public pure returns(uint64) {
        return main(-128, 1);
    }

    function to_max() public pure returns(uint64) {
        return main(127, 1);
    }

    function to_one_positives() public pure returns(uint64) {
        return main(127, 127);
    }

    function to_one_negatives() public pure returns(uint64) {
        return main(-128, -128);
    }

    function main(int8 a, int8 b) private pure returns(int8) {
        return a / b;
    }
}

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
//!     "entry": "zero_positive",
//!     "expected": 0
//! }, {
//!     "entry": "zero_negative_divided",
//!     "expected": 0
//! }, {
//!     "entry": "zero_negative_divider",
//!     "expected": 0
//! }, {
//!     "entry": "zero_negative_both",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_remainder_positive",
//!     "expected": 3
//! }, {
//!     "entry": "ordinar_remainder_negative_divided",
//!     "expected": 4
//! }, {
//!     "entry": "ordinar_remainder_negative_divider",
//!     "expected": 3
//! }, {
//!     "entry": "ordinar_remainder_negative_both",
//!     "expected": 4
//! }, {
//!     "entry": "ordinar_max_remainder",
//!     "expected": 6
//! }, {
//!     "entry": "ordinar_next",
//!     "expected": 0
//! }, {
//!     "entry": "min_to_min",
//!     "expected": 0
//! }, {
//!     "entry": "max_to_min",
//!     "expected": 0
//! }, {
//!     "entry": "max_to_max",
//!     "expected": 63
//! }, {
//!     "entry": "min_to_max",
//!     "expected": 61
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

    function zero_positive() public pure returns(uint64) {
        return main(42, 7);
    }

    function zero_negative_divided() public pure returns(uint64) {
        return main(-42, 7);
    }

    function zero_negative_divider() public pure returns(uint64) {
        return main(42, -7);
    }

    function zero_negative_both() public pure returns(uint64) {
        return main(-42, -7);
    }

    function ordinar_remainder_positive() public pure returns(uint64) {
        return main(45, 7);
    }

    function ordinar_remainder_negative_divided() public pure returns(uint64) {
        return main(-45, 7);
    }

    function ordinar_remainder_negative_divider() public pure returns(uint64) {
        return main(45, -7);
    }

    function ordinar_remainder_negative_both() public pure returns(uint64) {
        return main(-45, -7);
    }

    function ordinar_max_remainder() public pure returns(uint64) {
        return main(48, 7);
    }

    function ordinar_next() public pure returns(uint64) {
        return main(49, 7);
    }

    function min_to_min() public pure returns(uint64) {
        return main(0, 0);
    }

    function max_to_min() public pure returns(uint64) {
        return main(127, 127);
    }

    function max_to_max() public pure returns(uint64) {
        return main(127, 64);
    }

    function min_to_max() public pure returns(uint64) {
        return main(-128, 63);
    }

    function main(int8 a, int8 b) private pure returns(int8) {
        int8 c = a;
        c %= b;
        return c;
    }
}

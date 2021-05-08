//! { "ignore": true, "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 1
//! }, {
//!     "entry": "ordinar_false_lesser",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_false_bigger",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_true_negative",
//!     "expected": 1
//! }, {
//!     "entry": "ordinar_true_positive",
//!     "expected": 1
//! }, {
//!     "entry": "min_min",
//!     "expected": 1
//! }, {
//!     "entry": "max_max",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero_zero() public pure returns(uint64) {
        if (main(0, 0)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_false_lesser() public pure returns(uint64) {
        if (main(-25, 42)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_false_bigger() public pure returns(uint64) {
        if (main(42, -25)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_true_negative() public pure returns(uint64) {
        if (main(-42, -42)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_true_positive() public pure returns(uint64) {
        if (main(42, 42)) {
            return 1;
        } else {
            return 0;
        }
    }

    function min_min() public pure returns(uint64) {
        if (main(-128, -128)) {
            return 1;
        } else {
            return 0;
        }
    }

    function max_max() public pure returns(uint64) {
        if (main(127, 127)) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(int8 a, int8 b) private pure returns(bool) {
        return a == b;
    }
}

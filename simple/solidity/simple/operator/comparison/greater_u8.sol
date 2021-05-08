//! { "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_true_lesser",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_true_bigger",
//!     "expected": 1
//! }, {
//!     "entry": "ordinar_false",
//!     "expected": 0
//! }, {
//!     "entry": "max_max",
//!     "expected": 0
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

    function ordinar_true_lesser() public pure returns(uint64) {
        if (main(25, 42)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_true_bigger() public pure returns(uint64) {
        if (main(42, 25)) {
            return 1;
        } else {
            return 0;
        }
    }

    function ordinar_false() public pure returns(uint64) {
        if (main(42, 42)) {
            return 1;
        } else {
            return 0;
        }
    }

    function max_max() public pure returns(uint64) {
        if (main(255, 255)) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(uint8 a, uint8 b) private pure returns(bool) {
        return a > b;
    }
}

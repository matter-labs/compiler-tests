//! { "cases": [ {
//!     "entry": "false_false",
//!     "expected": 0
//! }, {
//!     "entry": "false_true",
//!     "expected": 0
//! }, {
//!     "entry": "true_false",
//!     "expected": 0
//! }, {
//!     "entry": "true_true",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function false_false() public pure returns(uint64) {
        if (main(false, false)) {
            return 1;
        } else {
            return 0;
        }
    }

    function false_true() public pure returns(uint64) {
        if (main(false, true)) {
            return 1;
        } else {
            return 0;
        }
    }

    function true_false() public pure returns(uint64) {
        if (main(true, false)) {
            return 1;
        } else {
            return 0;
        }
    }

    function true_true() public pure returns(uint64) {
        if (main(true, true)) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(bool a, bool b) private pure returns(bool) {
        return a && b;
    }
}

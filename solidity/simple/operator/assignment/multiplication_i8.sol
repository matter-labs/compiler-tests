//! { "ignore": true, "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_positive",
//!     "expected": 126
//! }, {
//!     "entry": "ordinar_negative_first",
//!     "expected": -126
//! }, {
//!     "entry": "ordinar_negative_second",
//!     "expected": -126
//! }, {
//!     "entry": "ordinar_negative_both",
//!     "expected": 126
//! }, {
//!     "entry": "to_max",
//!     "expected": 127
//! }, {
//!     "ignore": true, "entry": "overflow_negative",
//!     "engines": ["zkevm"], "expected": "error"
//! }, {
//!     "ignore": true, "entry": "overflow_positive",
//!     "engines": ["zkevm"], "expected": "error"
//! }, {
//!     "ignore": true, "entry": "overflow_minimal",
//!     "engines": ["zkevm"], "expected": "error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero_zero() public pure returns(uint64) {
        return main(0, 0);
    }

    function ordinar_positive() public pure returns(uint64) {
        return main(42, 3);
    }

    function ordinar_negative_first() public pure returns(uint64) {
        return main(-42, 3);
    }

    function ordinar_negative_second() public pure returns(uint64) {
        return main(42, -3);
    }

    function ordinar_negative_both() public pure returns(uint64) {
        return main(-42, -3);
    }

    function to_max() public pure returns(uint64) {
        return main(127, 1);
    }

    function overflow_negative() public pure returns(uint64) {
        return main(-100, 2);
    }

    function overflow_positive() public pure returns(uint64) {
        return main(100, 2);
    }

    function overflow_minimal() public pure returns(uint64) {
        return main(16, 8);
    }

    function main(int8 a, int8 b) private pure returns(int8) {
        int8 c = a;
        c *= b;
        return c;
    }
}

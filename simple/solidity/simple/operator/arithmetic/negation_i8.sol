//! { "ignore": true, "cases": [ {
//!     "entry": "zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar_negative",
//!     "expected": 42
//! }, {
//!     "entry": "ordinar_positive",
//!     "expected": -42
//! }, {
//!     "entry": "max_to_min",
//!     "expected": -127
//! }, {
//!     "entry": "almost_min_to_max",
//!     "expected": 127
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero() public pure returns(uint64) {
        return main(0);
    }

    function ordinar_negative() public pure returns(uint64) {
        return main(-42);
    }

    function ordinar_positive() public pure returns(uint64) {
        return main(42);
    }

    function max_to_min() public pure returns(uint64) {
        return main(127);
    }

    function almost_min_to_max() public pure returns(uint64) {
        return main(-127);
    }

    function main(int8 a) private pure returns(int8) {
        return -a;
    }
}

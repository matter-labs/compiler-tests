//! { "ignore": true, "cases": [ {
//!     "entry": "zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": 42
//! }, {
//!     "entry": "max",
//!     "expected": 127
//! }, {
//!     "ignore": true, "entry": "overflow_positive_minimal",
//!     "engines": ["zkevm"], "expected": "error"
//! }, {
//!     "ignore": true, "entry": "overflow_positive",
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

    function max() public pure returns(uint64) {
        return main(127);
    }

    function overflow_positive_minimal() public pure returns(uint64) {
        return main(128);
    }

    function overflow_positive() public pure returns(uint64) {
        return main(1000);
    }

    function main(uint16 a) private pure returns(int8) {
        return int8(a);
    }
}

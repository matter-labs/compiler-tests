//! { "ignore": true, "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": -17
//! }, {
//!     "entry": "to_max",
//!     "expected": 127
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
        return main(-42, 25);
    }

    function to_max() public pure returns(uint64) {
        return main(42, 85);
    }

    function overflow() public pure returns(uint64) {
        return main(100, 50);
    }

    function overflow_minimal() public pure returns(uint64) {
        return main(100, 28);
    }

    function main(int8 a, int8 b) private pure returns(int8) {
        int8 c = a;
        c += b;
        return c;
    }
}

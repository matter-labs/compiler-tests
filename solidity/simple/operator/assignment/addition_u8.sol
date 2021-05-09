//! { "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": 67
//! }, {
//!     "entry": "to_max",
//!     "expected": 255
//! }, {
//!     "ignore": true, "entry": "overflow",
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

    function ordinar() public pure returns(uint64) {
        return main(42, 25);
    }

    function to_max() public pure returns(uint64) {
        return main(100, 155);
    }

    function overflow() public pure returns(uint64) {
        return main(100, 200);
    }

    function overflow_minimal() public pure returns(uint64) {
        return main(100, 156);
    }

    function main(uint8 a, uint8 b) private pure returns(uint8) {
        uint8 c = a;
        c += b;
        return c;
    }
}

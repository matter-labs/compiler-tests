//! { "cases": [ {
//!     "entry": "zero_zero",
//!     "expected": 0
//! }, {
//!     "entry": "ordinar",
//!     "expected": 8
//! }, {
//!     "entry": "max_max",
//!     "expected": 255
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero_zero() public pure returns(uint64) {
        return main(0, 0);
    }

    function ordinar() public pure returns(uint64) {
        return main(24, 8);
    }

    function max_max() public pure returns(uint64) {
        return main(255, 255);
    }

    function main(uint8 a, uint8 b) private pure returns(uint8) {
        return a & b;
    }
}

//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 42
//! }, {
//!     "entry": "second",
//!     "expected": 99
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint64) {
        uint64 result = 42;
        return result;
    }

    function second() public pure returns(uint256) {
        uint256 result = 99;
        return result;
    }
}

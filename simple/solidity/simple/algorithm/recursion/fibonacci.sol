//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 1
//! }, {
//!     "entry": "eighth",
//!     "expected": 21
//! }, {
//!     "entry": "sixteenth",
//!     "expected": 987
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint64) {
        return fib(1);
    }

    function eighth() public pure returns(uint64) {
        return fib(8);
    }

    function sixteenth() public pure returns(uint64) {
        return fib(16);
    }

    function fib(uint8 n) private pure returns(uint64) {
        if (n <= 1) {
            return n;
        }

        return fib(n - 1) + fib(n - 2);
    }
}

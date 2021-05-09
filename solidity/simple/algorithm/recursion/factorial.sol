//! { "cases": [ {
//!     "entry": "zero",
//!     "expected": 1
//! }, {
//!     "entry": "fifth",
//!     "expected": 120
//! }, {
//!     "entry": "twelfth",
//!     "expected": 479001600
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function zero() public pure returns(uint64) {
        return fact(0);
    }

    function fifth() public pure returns(uint64) {
        return fact(5);
    }

    function twelfth() public pure returns(uint64) {
        return fact(12);
    }

    function fact(uint8 n) private pure returns(uint64) {
        if (n == 0) {
            return 1;
        }

        return fact(n - 1) * n;
    }
}

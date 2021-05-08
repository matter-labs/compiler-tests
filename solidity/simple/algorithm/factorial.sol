//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 120
//! }, {
//!     "entry": "two",
//!     "expected": 720
//! }, {
//!     "entry": "three",
//!     "expected": 5040
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        return main(5);
    }

    function two() public pure returns(uint64) {
        return main(6);
    }

    function three() public pure returns(uint64) {
        return main(7);
    }

    function main(uint8 n) private pure returns(uint64) {
        uint64 fact = 1;
        for(uint8 i = 1; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }
}
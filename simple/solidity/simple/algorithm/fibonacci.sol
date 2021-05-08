//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 89
//! }, {
//!     "entry": "two",
//!     "expected": 233
//! }, {
//!     "entry": "three",
//!     "expected": 610
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        return main(12);
    }

    function two() public pure returns(uint64) {
        return main(14);
    }

    function three() public pure returns(uint64) {
        return main(16);
    }

    function main(uint8 n) private pure returns(uint64) {
        uint64 value1 = 0;
        uint64 value2 = 1;
        uint64 fibo = value1;

        for(uint8 i = 1; i <= n - 2; i++) {
            fibo = value1 + value2;
            value1 = value2;
            value2 = fibo;
        }

        return fibo;
    }
}
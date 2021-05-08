//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 1
//! }, {
//!     "entry": "second",
//!     "expected": 1
//! }, {
//!     "entry": "third",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint64) {
        for(uint8 i = 0; i < 2; i++) {
            i*2;
        }
        return 1;
    }

    function second() public pure returns(uint64) {
        uint8 a;
        for(uint8 i = 0; i < 2; i++) {
            a = i*2;
        }
        return 1;
    }

    function third() public pure returns(uint64) {
        uint8 a;
        for(uint8 i = 0; i < 2; i++) {
            a*2;
        }
        return 1;
    }
}

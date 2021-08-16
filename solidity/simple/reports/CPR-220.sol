//! { "cases": [ {
//!     "entry": "f",
//!     "expected": 42
//! } ] }


// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    mapping(uint8 => uint8) m1;
    function f() public returns (uint8) {
        m1[1] = 42;
        return m1[1];
    }
}
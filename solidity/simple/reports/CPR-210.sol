//! { "cases": [ {
//!     "entry": "complex",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8[1] KEY = [1];

    function complex() public view returns(uint8) {
        return KEY[0];
    }
}
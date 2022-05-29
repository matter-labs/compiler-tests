//! { "cases": [ {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "entry": "complex",
//!             "calldata": [
//!             ],
//!             "storage": { "Test.address": [
//!                 "1"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8[1] KEY = [1];

    function complex() public view returns(uint8) {
        return KEY[0];
    }
}
//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    uint8[2] KEY = [1, 1]; // if replace the first or second value with 0, the test will work

    function f(uint8 data) public view returns(bool) {
        return KEY[1] == data;
    }
}
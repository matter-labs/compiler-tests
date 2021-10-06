//! { "cases": [ {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "entry": "complex",
//!             "calldata": [
//!             ],
//!             "storage": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint8[1] KEY = [1];

    function complex() public view returns(uint8) {
        return KEY[0];
    }
}
//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "32"
//!             ],
//!             "expected": [
//!                 "*"
//!             ]
//!         },
//!         {
//!             "entry": "_get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    uint public a;

    // if remove constructor or param - it works
    constructor(uint b) {
        a = 0;
    }

    function _get() public view returns(uint) {
        return a;
    }
}
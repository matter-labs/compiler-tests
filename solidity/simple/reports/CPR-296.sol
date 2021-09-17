//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "calldata": [
//!                 "32"
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

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

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
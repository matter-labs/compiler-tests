//! { "cases": [ {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "calldata": [
//!             ]
//!         },
//!         {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Test {
    uint[] public a; // with static array works

    constructor() { // if replace this with function(not constructor) - it works
        a.push(1);
    }

    function get() public view returns(uint) {
        return a[0];
    }
}
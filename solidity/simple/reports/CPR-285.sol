//! { "modes": [
//!     "solc-0.8.5 Y-",
//!     "solc-0.8.6 Y-",
//!     "solc-0.8.7 Y-"
//! ], "cases": [ {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "constructor": true,
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

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

// solc-0.8.5+ calculate keccak256 at compile time, whereas we use another hashing algorithm at runtime
contract Test {
    uint[] public a; // with static array works

    constructor() { // if replace this with function(not constructor) - it works
        a.push(1);
    }

    function get() public view returns(uint) {
        return a[0];
    }
}
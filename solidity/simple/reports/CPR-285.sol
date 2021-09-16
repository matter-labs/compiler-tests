//! { "modes": [
//!     "solc-0.8.0",
//!     "solc-0.8.1",
//!     "solc-0.8.2",
//!     "solc-0.8.3",
//!     "solc-0.8.4",
//!     "solc-0.8.5 Y-",
//!     "solc-0.8.6 Y-",
//!     "solc-0.8.7 Y-"
//! ], "cases": [ {
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

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

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
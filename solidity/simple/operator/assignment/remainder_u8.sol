//! { "cases": [ {
//!     "name": "zero_by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "ordinar_by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "max_by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "255", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "ordinar",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_max_remainder",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "48", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
//!     ]
//! }, {
//!     "name": "ordinar_next",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "49", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "255", "128"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "255", "255"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        uint8 c = a;
        c %= b;
        return c;
    }
}

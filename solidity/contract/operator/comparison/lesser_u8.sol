//! { "cases": [ {
//!     "name": "zero_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_true_lesser",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "25", "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_true_bigger",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "25"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_false",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_max",
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
    function main(uint8 a, uint8 b) public pure returns(bool) {
        return a < b;
    }
}
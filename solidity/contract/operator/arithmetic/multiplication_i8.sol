//! { "ignore": true,
//! "cases": [ {
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
//!     "name": "ordinar_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
//! }, {
//!     "name": "ordinar_negative_first",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-126"
//!     ]
//! }, {
//!     "name": "ordinar_negative_second",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "-3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-126"
//!     ]
//! }, {
//!     "name": "ordinar_negative_both",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "-3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
//! }, {
//!     "name": "to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "overflow_negative",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-100", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "overflow_positive",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "100", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "overflow_minimal",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "16", "8"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        return a * b;
    }
}
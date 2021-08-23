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
//!     "name": "ordinar",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "64"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-22"
//!     ]
//! }, {
//!     "name": "to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-1", "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-128"
//!     ]
//! }, {
//!     "name": "to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "overflow",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-50", "100"
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
//!                 "-128", "1"
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
        int8 c = a;
        c -= b;
        return c;
    }
}

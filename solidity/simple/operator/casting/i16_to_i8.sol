//! { "cases": [ {
//!     "name": "zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
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
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "overflow_negative_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-129"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "overflow_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-1000"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "24"
//!     ]
//! }, {
//!     "name": "overflow_positive_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "128"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-128"
//!     ]
//! }, {
//!     "name": "overflow_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1000"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-24"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int16 a) public pure returns(int8) {
        return int8(a);
    }
}

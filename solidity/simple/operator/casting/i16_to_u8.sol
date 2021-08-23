//! { "ignore": true,
//! "cases": [ {
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
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "overflow_negative",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "overflow_positive_minimal",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "256"
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
//!                 "1000"
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
    function main(int16 a) public pure returns(uint8) {
        return uint8(a);
    }
}

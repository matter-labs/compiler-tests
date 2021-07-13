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
//!     "name": "ordinar_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "ordinar_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-42"
//!     ]
//! }, {
//!     "name": "max_to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-127"
//!     ]
//! }, {
//!     "name": "almost_min_to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int8 a) public pure returns(int8) {
        return -a;
    }
}

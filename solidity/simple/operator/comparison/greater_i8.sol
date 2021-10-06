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
//!     "name": "ordinar_false_lesser",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-25", "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_true_bigger",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "-25"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_false_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "-42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_false_positive",
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
//!     "name": "min_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "-128"
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
//!                 "127", "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(bool) {
        return a > b;
    }
}

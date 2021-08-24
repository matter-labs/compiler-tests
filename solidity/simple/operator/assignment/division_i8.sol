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
//!     "expected": "Runtime error"
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
//!     "expected": "Runtime error"
//! }, {
//!     "name": "min_by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "0"
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! }, {
//!     "name": "max_by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "0"
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! }, {
//!     "name": "ordinar_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
//!     ]
//! }, {
//!     "name": "ordinar_negative_divided",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-6"
//!     ]
//! }, {
//!     "name": "ordinar_negative_divider",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-6"
//!     ]
//! }, {
//!     "name": "ordinar_negative_both",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
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
//!         "7"
//!     ]
//! }, {
//!     "name": "to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "1"
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
//!                 "127", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "to_one_positives",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "to_one_negatives",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "-128"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        int8 c = a;
        c /= b;
        return c;
    }
}

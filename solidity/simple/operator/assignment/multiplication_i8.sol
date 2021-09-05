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
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-100", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x11"
//!     ]
//! }, {
//!     "name": "overflow_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "100", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x11"
//!     ]
//! }, {
//!     "name": "overflow_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "16", "8"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x11"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        int8 c = a;
        c *= b;
        return c;
    }
}

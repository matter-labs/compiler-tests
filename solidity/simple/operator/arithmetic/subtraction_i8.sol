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
//!     "modes": [ "0.8" ],
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-50", "100"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! }, {
//!     "name": "overflow_minimal",
//!     "modes": [ "0.8" ],
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        return a - b;
    }
}

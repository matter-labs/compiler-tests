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
//!         "1"
//!     ]
//! }, {
//!     "name": "ordinar_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-3", "4"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "81"
//!     ]
//! }, {
//!     "name": "ordinar_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-4", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-64"
//!     ]
//! }, {
//!     "name": "to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "11", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "121"
//!     ]
//! }, {
//!     "name": "overflow",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "100", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [ {
//!         "compiler_version": "<0.8",
//!         "return_data": [
//!             "16"
//!         ],
//!         "exception": false
//!     }, {
//!         "compiler_version": ">=0.8",
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     } ]
//! }, {
//!     "name": "overflow_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "12", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [ {
//!         "compiler_version": "<0.8",
//!         "return_data": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639824"
//!         ],
//!         "exception": false
//!     }, {
//!         "compiler_version": ">=0.8",
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     } ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(int8 a, uint8 b) public pure returns(int8) {
        return a ** b;
    }
}

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
//!                 "42", "21"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "63"
//!     ]
//! }, {
//!     "name": "max_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "255", "255"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "255"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        return a | b;
    }
}

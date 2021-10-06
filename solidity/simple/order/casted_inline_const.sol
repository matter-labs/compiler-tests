//! { "cases": [ {
//!     "name": "remainder_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "15"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! }, {
//!     "name": "remainder_one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "22"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "7"
//!     ]
//! }, {
//!     "name": "remainder_two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "26"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "8"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(uint32 witness) public pure returns(uint32) {
        return witness / uint32(3);
    }
}

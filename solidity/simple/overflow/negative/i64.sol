//! { "ignore": true,
//! "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-9223372036854775808"
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
    function main(int64 witness) public pure returns(int64) {
        return witness - 1;
    }
}
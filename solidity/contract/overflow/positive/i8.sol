//! { "ignore": true,
//! "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127"
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
    function main(int8 witness) public pure returns(int8) {
        return witness + 1;
    }
}
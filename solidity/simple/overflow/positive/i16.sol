//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "32767"
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int16 witness) public pure returns(int16) {
        return witness + 1;
    }
}
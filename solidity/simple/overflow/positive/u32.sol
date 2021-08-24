//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "4294967295"
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(uint32 witness) public pure returns(uint32) {
        return witness + 1;
    }
}
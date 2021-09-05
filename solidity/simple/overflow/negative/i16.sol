//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-32768"
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
    function main(int16 witness) public pure returns(int16) {
        return witness - 1;
    }
}
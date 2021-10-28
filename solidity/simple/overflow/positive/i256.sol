//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "57896044618658097711785492504343953926634992332820282019728792003956564819967"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x0000001100000000000000000000000000000000000000000000000000000000"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main(int256 witness) public pure returns(int256) {
        return witness + 1;
    }
}
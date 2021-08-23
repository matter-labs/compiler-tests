//! { "ignore": true,
//! "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-226156424291633194186662080095093570025917938800079226639565593765455331328"
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
    function main(int248 witness) public pure returns(int248) {
        return witness - 1;
    }
}
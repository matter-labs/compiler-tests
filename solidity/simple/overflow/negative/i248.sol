//! { "cases": [ {
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
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x0000001100000000000000000000000000000000000000000000000000000000"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main(int248 witness) public pure returns(int248) {
        return witness - 1;
    }
}
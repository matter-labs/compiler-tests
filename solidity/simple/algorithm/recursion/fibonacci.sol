//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "fib",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "eighth",
//!     "input": [
//!         {
//!             "entry": "fib",
//!             "calldata": [
//!                 "8"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "21"
//!     ]
//! }, {
//!     "name": "sixteenth",
//!     "input": [
//!         {
//!             "entry": "fib",
//!             "calldata": [
//!                 "16"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "987"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function fib(uint8 n) public pure returns(uint64) {
        if (n <= 1) {
            return n;
        }

        return fib(n - 1) + fib(n - 2);
    }
}

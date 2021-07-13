//! { "cases": [ {
//!     "name": "zero",
//!     "input": [
//!         {
//!             "entry": "fact",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "fifth",
//!     "input": [
//!         {
//!             "entry": "fact",
//!             "calldata": [
//!                 "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "120"
//!     ]
//! }, {
//!     "name": "twelfth",
//!     "input": [
//!         {
//!             "entry": "fact",
//!             "calldata": [
//!                 "12"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "479001600"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function fact(uint8 n) public pure returns(uint64) {
        if (n == 0) {
            return 1;
        }

        return fact(n - 1) * n;
    }
}

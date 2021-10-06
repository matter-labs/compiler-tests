//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "12"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "89"
//!     ]
//! }, {
//!     "name": "two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "14"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "233"
//!     ]
//! }, {
//!     "name": "three",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "16"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "610"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main(uint8 n) public pure returns(uint64) {
        uint64 value1 = 0;
        uint64 value2 = 1;
        uint64 fibo = value1;

        for(uint8 i = 1; i <= n - 2; i++) {
            fibo = value1 + value2;
            value1 = value2;
            value2 = fibo;
        }

        return fibo;
    }
}
//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "20"
//!     ]
//! }, {
//!     "name": "third",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "255"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64"
//!     ]
//! }, {
//!     "name": "another",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result;
        assembly {
            switch witness
            case 1 { result := 10 }
            case 2 { result := 20 }
            default {
                switch witness
                case 255 { result := 64 }
                default { result := 42}
            }
        }
        return result;
    }
}

//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1", "0", "0", "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "25"
//!     ]
//! }, {
//!     "name": "two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "1", "1", "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "50"
//!     ]
//! }, {
//!     "name": "three",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "1", "0", "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "75"
//!     ]
//! }, {
//!     "name": "four",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0", "0", "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "100"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(bool[3] memory gates, uint8 mutated) public pure returns(uint8) {
        if (gates[0]) {
            mutated *= 5;
        } else if (gates[1]) {
            if (gates[2]) {
                mutated *= 10;
            } else {
                mutated *= 15;
            }
        } else {
            mutated *= 20;
        }
        return mutated;
    }
}

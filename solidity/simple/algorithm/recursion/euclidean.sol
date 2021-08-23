//! { "cases": [ {
//!     "name": "gcd_15_6",
//!     "input": [
//!         {
//!             "entry": "gcd",
//!             "calldata": [
//!                 "15", "6"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3"
//!     ]
//! }, {
//!     "name": "gcd_23_19",
//!     "input": [
//!         {
//!             "entry": "gcd",
//!             "calldata": [
//!                 "23", "19"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "gcd_76800_15435",
//!     "input": [
//!         {
//!             "entry": "gcd",
//!             "calldata": [
//!                 "76800", "15435"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "15"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function gcd(uint64 a, uint64 b) public pure returns(uint64) {
        if (b == 0) {
            return a;
        }

        return gcd(b, a%b);
    }
}

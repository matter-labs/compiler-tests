//! { "cases": [ {
//!     "name": "entry1",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! }, {
//!     "name": "false_true",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "8"
//!     ]
//! }, {
//!     "name": "true_false",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "1", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "8"
//!     ]
//! }, {
//!     "name": "true_true",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "1", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function entry(bool first, bool second) public pure returns(uint8) {
        uint8 result = 1;

        if (first || second) {
            result <<= 1;
        }

        if (first != second) {
            result <<= 1;
        }

        if (first && second) {
            result <<= 1;
        }

        if (!first) {
            result <<= 1;
        }

        if (!second) {
            result <<= 1;
        }

        return result;
    }
}

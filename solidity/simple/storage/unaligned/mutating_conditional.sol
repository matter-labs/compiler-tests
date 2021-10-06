//! { "cases": [ {
//!     "name": "false_false",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0",
//!                 "0",
//!                 "25"
//!             ],
//!             "storage": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "false_true",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0",
//!                 "1",
//!                 "25"
//!             ],
//!             "storage": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "true_false",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1",
//!                 "0",
//!                 "25"
//!             ],
//!             "storage": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "true_true",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1",
//!                 "1",
//!                 "25"
//!             ],
//!             "storage": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "25"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint8 data;

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        data = 42;

        if (gate_1) {
            if (gate_2) {
                data = value;
            }
        }

        return data;
    }
}

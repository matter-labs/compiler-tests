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
//!             "storage": { "deadbeef00000000000000000000000000000000": [
//!                 "42"
//!             ] }
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
//!             "storage": { "deadbeef00000000000000000000000000000000": [
//!                 "42"
//!             ] }
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
//!             "storage": { "deadbeef00000000000000000000000000000000": [
//!                 "42"
//!             ] }
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
//!             "storage": { "deadbeef00000000000000000000000000000000": [
//!                 "42"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "25"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint256 data;

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        if (gate_1) {
            if (gate_2) {
                data = uint256(value);
            }
        }

        return uint8(data);
    }
}

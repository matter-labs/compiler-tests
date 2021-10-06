//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "12"
//!             ],
//!             "storage": [
//!                 "0x020503"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint8 field_1;
    uint8 field_2;
    uint8 field_3;

    function main(uint8 witness) public returns(uint8) {
        return witness + field_1 * field_2 * field_3;
    }
}

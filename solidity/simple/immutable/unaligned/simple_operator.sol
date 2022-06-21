//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "0x03",
//!                 "0x05",
//!                 "0x02"
//!             ],
//!             "expected": [
//!                 "*"
//!             ]
//!         },
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "12"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    uint8 immutable field_1;
    uint8 immutable field_2;
    uint8 immutable field_3;

    constructor(uint8 a, uint8 b, uint8 c) public {
        field_1 = a;
        field_2 = b;
        field_3 = c;
    }

    function main(uint8 witness) external returns(uint8) {
        return witness + field_1 * field_2 * field_3;
    }
}

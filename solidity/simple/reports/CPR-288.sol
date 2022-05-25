//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "caller": "0x0000000000000000000000000000000000000099",
//!             "calldata": [
//!                 "25", "42"
//!             ],
//!             "expected": [
//!                 "*"
//!             ]
//!         },
//!         {
//!             "entry": "a",
//!             "calldata": [],
//!             "expected": [ "25" ]
//!         },
//!         {
//!             "entry": "b",
//!             "calldata": [],
//!             "expected": [ "0x99" ]
//!         },
//!         {
//!             "entry": "c",
//!             "calldata": [],
//!             "expected": [ "42" ]
//!         }
//!     ],
//!     "expected": [ "42" ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint immutable public a;
    address immutable public b;
    uint8 immutable public c;

    constructor(uint x, uint8 y) {
        a = x;
        b = msg.sender;
        c = y;
    }
}

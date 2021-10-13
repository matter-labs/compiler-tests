//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    mapping(uint8 => uint8) m1;
    function f() public returns (uint8) {
        m1[1] = 42;
        return m1[1];
    }
}
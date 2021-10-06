//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "210"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return uint8(witness + 42e0 + 0x2a + 42 + 0x2A);
    }
}

//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "4"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64516"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function main(uint8 witness) public pure returns(uint24) {
        return 65536 - 255 * uint24(witness);
    }
}

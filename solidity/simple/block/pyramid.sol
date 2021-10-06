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
//!         "16"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return
        1 + (
            2 + (
                3 + (
                    witness
                ) + 3
            ) + 2
        ) + 1;
    }
}

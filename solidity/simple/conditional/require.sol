//! { "cases": [ {
//!     "name": "condition_true",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x8C379A000000000000000000000000000000000000000000000000000000000",
//!         "32",
//!         "5",
//!         "0x4572726F72000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "condition_false",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5, "Error");
        }

        return result;
    }
}

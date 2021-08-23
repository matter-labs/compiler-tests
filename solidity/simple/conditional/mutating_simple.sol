//! { "cases": [ {
//!     "name": "conditionTrue",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! }, {
//!     "name": "conditionFalse",
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
            result += 5;
        }

        return result;
    }
}

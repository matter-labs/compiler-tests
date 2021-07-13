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
//!         "50"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIZE_HALVED = 2;

    function main(uint8 value) public pure returns(uint8) {
        uint8[SIZE_HALVED * 2] memory array;
        for(uint8 i = 0; i < SIZE_HALVED * 2; i++) {
            array[i] = 2;
        }
        for(uint8 i = 0; i < SIZE_HALVED * 2; i++) {
            value += array[i];
        }
        return value;
    }
}

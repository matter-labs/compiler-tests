//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "30"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    function main(uint8[ARRAY_SIZE] memory array) public pure returns(uint8) {
        uint8 sum = 0;
        for(uint8 i = 3; i < 8; i++) {
            sum += array[i];
        }
        return sum;
    }
}

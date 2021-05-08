//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 3025
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    function entry() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

        return main(input);
    }

    function main(uint8[ARRAY_SIZE] memory array) private pure returns(uint32) {
        uint32 sum = 0;
        for(uint8 i = 0; i < ARRAY_SIZE; i++) {
            for(uint8 j = 0; j < ARRAY_SIZE; j++) {
                sum += array[i] * array[j];
            }
        }
        return sum;
    }
}

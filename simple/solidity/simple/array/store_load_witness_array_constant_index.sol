//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 64
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIZE = 4;

    function entry() public pure returns(uint64) {
        uint8[SIZE] memory array = [1, 2, 3, 4];

        return main(array);
    }

    function main(uint8[SIZE] memory array) private pure returns(uint8) {
        array[3] = 106;
        array[1] = 42;

        return array[3] - array[1];
    }
}

//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 218
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIZE = 5;

    function entry() public pure returns(uint64) {
        uint8[SIZE] memory array = [10, 20, 30, 40, 50];

        return main(array, 6);
    }

    function main(uint8[SIZE] memory array, uint8 witness) private pure returns(uint8) {
        array[0] += witness;
        array[1] -= witness;
        array[2] *= witness;
        array[3] /= witness;
        array[4] %= witness;

        return array[0] + array[1] + array[2] + array[3] + array[4];
    }
}

//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 25
//! }, {
//!     "entry": "two",
//!     "expected": 50
//! }, {
//!     "entry": "three",
//!     "expected": 75
//! }, {
//!     "entry": "four",
//!     "expected": 100
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        bool[3] memory input = [true, false, false];
        return main(input, 5);
    }

    function two() public pure returns(uint64) {
        bool[3] memory input = [false, true, true];
        return main(input, 5);
    }

    function three() public pure returns(uint64) {
        bool[3] memory input = [false, true, false];
        return main(input, 5);
    }

    function four() public pure returns(uint64) {
        bool[3] memory input = [false, false, false];
        return main(input, 5);
    }

    function main(bool[3] memory gates, uint8 mutated) private pure returns(uint8) {
        if (gates[0]) {
            mutated *= 5;
        } else if (gates[1]) {
            if (gates[2]) {
                mutated *= 10;
            } else {
                mutated *= 15;
            }
        } else {
            mutated *= 20;
        }
        return mutated;
    }
}

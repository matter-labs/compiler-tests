//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 1
//! }, {
//!     "entry": "two",
//!     "expected": 2
//! }, {
//!     "entry": "three",
//!     "expected": 3
//! }, {
//!     "entry": "four",
//!     "expected": 4
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        bool[3] memory input = [true, false, false];
        return main(input);
    }

    function two() public pure returns(uint64) {
        bool[3] memory input = [false, true, true];
        return main(input);
    }

    function three() public pure returns(uint64) {
        bool[3] memory input = [false, true, false];
        return main(input);
    }

    function four() public pure returns(uint64) {
        bool[3] memory input = [false, false, false];
        return main(input);
    }

    function main(bool[3] memory gates) private pure returns(uint8) {
       if (gates[0]) {
           return 1;
       } else if (gates[1]) {
           if (gates[2]) {
               return 2;
           } else {
               return 3;
           }
       } else {
           return 4;
       }
    }
}

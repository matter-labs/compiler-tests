//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 16
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint8) {
        return f4(4);
    }

    function f1(uint8 a) private pure returns(uint8) {
        return a * 1;
    }

    function f2(uint8 a) private pure returns(uint8) {
        return a * 2;
    }

    function f3(uint8 a) private pure returns(uint8) {
        return a * 3;
    }

    function f4(uint8 a) private pure returns(uint8) {
        return a * 4;
    }

    function f5(uint8 a) private pure returns(uint8) {
        return a * 5;
    }

    function f6(uint8 a) private pure returns(uint8) {
        return a * 6;
    }

    function f7(uint8 a) private pure returns(uint8) {
        return a * 7;
    }

    function f8(uint8 a) private pure returns(uint8) {
        return a * 8;
    }
}

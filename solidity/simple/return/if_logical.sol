//! { "cases": [ {
//!     "entry": "false_false",
//!     "expected": 4
//! }, {
//!     "entry": "false_true",
//!     "expected": 8
//! }, {
//!     "entry": "true_false",
//!     "expected": 8
//! }, {
//!     "entry": "true_true",
//!     "expected": 4
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function false_false() public pure returns(uint8) {
        return main(false, false);
    }

    function false_true() public pure returns(uint8) {
        return main(false, true);
    }

    function true_false() public pure returns(uint8) {
        return main(true, false);
    }

    function true_true() public pure returns(uint8) {
        return main(true, true);
    }

    function main(bool first, bool second) private pure returns(uint8) {
        uint8 result = 1;

        if (first || second) {
            result <<= 1;
        }

        if (first != second) {
            result <<= 1;
        }

        if (first && second) {
            result <<= 1;
        }

        if (!first) {
            result <<= 1;
        }

        if (!second) {
            result <<= 1;
        }

        return result;
    }
}

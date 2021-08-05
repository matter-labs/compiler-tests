//! { "cases": [ {
//!     "entry": "condition_true",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! }, {
//!     "entry": "condition_false",
//!     "expected": 5
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function condition_true() public pure returns(uint64) {
        return main(true);
    }

    function condition_false() public pure returns(uint64) {
        return main(false);
    }

    function main(bool condition) private pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5);
        }

        return result;
    }
}

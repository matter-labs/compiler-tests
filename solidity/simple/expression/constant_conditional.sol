//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 158
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function entry() public pure returns(uint64) {
        return main(42);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 conditional;
        if (SCRUTINEE == 64) {
            conditional = 100;
        } else {
            conditional = 200;
        }
        return conditional - witness;
    }
}

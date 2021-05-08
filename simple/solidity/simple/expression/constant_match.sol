//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 58
//! }, {
//!     "entry": "two",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function one() public pure returns(uint64) {
        return main(42);
    }

    function two() public pure returns(uint64) {
        return main(100);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 _match;
        if (SCRUTINEE == 0) {
            _match = 10;
        } else if (SCRUTINEE == 1) {
            _match = 20;
        } else if (SCRUTINEE == 42) {
            _match = 100;
        } else {
            _match = 255 - SCRUTINEE;
        }
        return _match - witness;
    }
}

//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 25
//! }, {
//!     "entry": "second",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint64) {
        return main(1);
    }

    function second() public pure returns(uint64) {
        return main(2);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 tmp;
        if (witness == 1) {
            tmp = 2;
        } else {
            tmp = 3;
        }
        if (tmp == 2) {
            return 25;
        } else {
            return 42;
        }
    }
}

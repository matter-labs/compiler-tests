//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 10
//! }, {
//!     "entry": "second",
//!     "expected": 20
//! }, {
//!     "entry": "third",
//!     "expected": 64
//! }, {
//!     "entry": "another",
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

    function third() public pure returns(uint64) {
        return main(255);
    }

    function another() public pure returns(uint64) {
        return main(0);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 result;
        assembly {
            switch witness
            case 1 { result := 10 }
            case 2 { result := 20 }
            default {
                switch witness
                case 255 { result := 64 }
                default { result := 42}
            }
        }
        return result;
    }
}

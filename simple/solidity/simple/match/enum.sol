//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 5
//! }, {
//!     "entry": "second",
//!     "expected": 10
//! }, {
//!     "entry": "third",
//!     "expected": 15
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum Language {
        JABBERWOCKY,
        ZINC,
        RUST
    }

    function first() public pure returns(uint64) {
        return main(Language.JABBERWOCKY);
    }

    function second() public pure returns(uint64) {
        return main(Language.ZINC);
    }

    function third() public pure returns(uint64) {
        return main(Language.RUST);
    }

    function main(Language language) private pure returns(uint8) {
        uint8 result;
        assembly {
            switch language
            case 0 { result := 5 }
            case 1 { result := 10 }
            case 2 { result := 15 }
        }
        return result;
    }
}

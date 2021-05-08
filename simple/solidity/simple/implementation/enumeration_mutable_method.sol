//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 48
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum List {
        FIRST,
        SECOND,
        THIRD
    }

    function entry() public pure returns(uint64) {
        return main(8);
    }

    function multiply(List list, List other) private pure returns(uint8) {
        return (uint8(list) + 1) * (uint8(other) + 1);
    }

    function main(uint8 witness) private pure returns(uint8) {
        return multiply(List.SECOND, List.THIRD) * witness;
    }
}

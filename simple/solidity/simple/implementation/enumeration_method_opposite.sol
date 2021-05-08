//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 2
//! }, {
//!     "entry": "second",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum List {
        FIRST,
        SECOND
    }

    function first() public pure returns(uint64) {
        return uint64(main(List.FIRST)) + 1;
    }

    function second() public pure returns(uint64) {
        return uint64(main(List.SECOND)) + 1;
    }

    function opposite(List list) private pure returns(List) {
        if (list == List.FIRST) {
            return List.SECOND;
        } else {
            return List.FIRST;
        }
    }

    function main(List witness) private pure returns(List) {
        return opposite(witness);
    }
}

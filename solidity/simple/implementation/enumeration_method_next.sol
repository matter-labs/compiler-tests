//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 2
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum List {
        DEFAULT,
        FIRST,
        SECOND,
        THIRD
    }

    function entry() public pure returns(uint64) {
        return uint64(main(List.FIRST));
    }

    function next(List list) private pure returns(List) {
        if (list == List.DEFAULT) {
            return List.FIRST;
        } else if (list == List.FIRST) {
            return List.SECOND;
        } else if (list == List.SECOND) {
            return List.THIRD;
        } else {
            return List.DEFAULT;
        }
    }

    function main(List witness) private pure returns(List) {
        return next(witness);
    }
}

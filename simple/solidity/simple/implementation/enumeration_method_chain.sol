//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 24
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
        return main(8);
    }

    function _new() private pure returns(List) {
        return List.DEFAULT;
    }

    function intoFirst(List list) private pure returns(List) {
        return List.FIRST;
    }

    function intoSecond(List list) private pure returns(List) {
        return List.SECOND;
    }

    function intoThird(List list) private pure returns(List) {
        return List.THIRD;
    }

    function main(uint8 witness) private pure returns(uint64) {
        return uint64(intoThird(intoSecond(intoFirst(_new())))) * witness;
    }
}

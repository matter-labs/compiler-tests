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
        return uint64(main(8));
    }

    function multiplyByAll(List list) private pure returns(uint256) {
        return (uint256(list) + 1) * (uint256(List.FIRST) + 1) * (uint256(List.SECOND) + 1) * (uint256(List.THIRD) + 1);
    }

    function main(uint8 witness) private pure returns(uint256) {
        return multiplyByAll(List.FIRST) * witness;
    }
}

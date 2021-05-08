//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 30
//! }, {
//!     "entry": "two",
//!     "expected": 600
//! }, {
//!     "entry": "three",
//!     "expected": 5999994
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum List {
        FIRST,
        SECOND,
        THIRD
    }

    function one() public pure returns(uint64) {
        return uint64(main(5));
    }

    function two() public pure returns(uint64) {
        return uint64(main(100));
    }

    function three() public pure returns(uint64) {
        return uint64(main(999999));
    }

    function first() private pure returns(List) {
        return List.FIRST;
    }

    function second() private pure returns(List) {
        return List.SECOND;
    }

    function third() private pure returns(List) {
        return List.THIRD;
    }

    function main(uint256 witness) private pure returns(uint256) {
        return (uint256(first()) + 1 + uint256(second()) + 1 + uint256(third()) + 1) * witness;
    }
}

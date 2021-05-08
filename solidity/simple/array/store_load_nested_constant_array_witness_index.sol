//! { "cases": [ {
//!     "entry": "element1",
//!     "expected": 1
//! }, {
//!     "entry": "element2",
//!     "expected": 2
//! }, {
//!     "entry": "element3",
//!     "expected": 3
//! }, {
//!     "entry": "element4",
//!     "expected": 4
//! }, {
//!     "entry": "element5",
//!     "expected": 5
//! }, {
//!     "entry": "element6",
//!     "expected": 6
//! }, {
//!     "entry": "element7",
//!     "expected": 7
//! }, {
//!     "entry": "element8",
//!     "expected": 8
//! }, {
//!     "entry": "element9",
//!     "expected": 9
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIDE_SIZE = 3;

    function element1() public pure returns(uint64) {
        return main(0, 0);
    }

    function element2() public pure returns(uint64) {
        return main(0, 1);
    }

    function element3() public pure returns(uint64) {
        return main(0, 2);
    }

    function element4() public pure returns(uint64) {
        return main(1, 0);
    }

    function element5() public pure returns(uint64) {
        return main(1, 1);
    }

    function element6() public pure returns(uint64) {
        return main(1, 2);
    }

    function element7() public pure returns(uint64) {
        return main(2, 0);
    }

    function element8() public pure returns(uint64) {
        return main(2, 1);
    }

    function element9() public pure returns(uint64) {
        return main(2, 2);
    }

    function main(uint8 i, uint8 j) private pure returns(uint8) {
        uint8[SIDE_SIZE][SIDE_SIZE] memory array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
        return array[i][j];
    }
}

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
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIZE = 4;

    function element1() public pure returns(uint64) {
        uint8[SIZE] memory array = [1, 2, 3, 4];

        return main(array, 0);
    }

    function element2() public pure returns(uint64) {
        uint8[SIZE] memory array = [1, 2, 3, 4];

        return main(array, 1);
    }

    function element3() public pure returns(uint64) {
        uint8[SIZE] memory array = [1, 2, 3, 4];

        return main(array, 2);
    }

    function element4() public pure returns(uint64) {
        uint8[SIZE] memory array = [1, 2, 3, 4];

        return main(array, 3);
    }

    function main(uint8[SIZE] memory array, uint8 index) private pure returns(uint8) {
        return array[index];
    }
}

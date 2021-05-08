//! { "cases": [ {
//!     "entry": "none",
//!     "expected": 1
//! }, {
//!     "entry": "ascending",
//!     "expected": 1
//! }, {
//!     "entry": "descending",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    enum Direction {
        None,
        Ascending,
        Descending
    }

    function none() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        main(array, Direction.None);

        bool isSevenFirst = array[0] == 7;
        bool isSixLast = array[ARRAY_SIZE - 1] == 6;
        bool result = isSevenFirst && isSixLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function ascending() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        main(array, Direction.Ascending);

        bool isOneFirst = array[0] == 1;
        bool isTenLast = array[ARRAY_SIZE - 1] == 10;
        bool result = isOneFirst && isTenLast;
        if (result) {
            return 1;
        } else {
            return array[0];
        }
    }

    function descending() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        main(array, Direction.Descending);

        bool isTenFirst = array[0] == 10;
        bool isOneLast = array[ARRAY_SIZE - 1] == 1;
        bool result = isTenFirst && isOneLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(uint8[ARRAY_SIZE] memory array, Direction direction) private pure {
        bool swapped = true;
        for(uint8 i = 0; i < ARRAY_SIZE - 1; i++) {
            swapped = false;
            for(uint8 j = 0; j < ARRAY_SIZE - i - 1; j++) {
                if ((direction == Direction.Ascending && array[j] > array[j + 1]) ||
                    (direction == Direction.Descending && array[j] < array[j + 1])) {
                    uint8 temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                    swapped = true;
                }
            }
            if (!swapped) {
                break;
            }
        }
    }

}
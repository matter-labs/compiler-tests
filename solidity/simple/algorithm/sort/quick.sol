//! { "cases": [ {
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
        Ascending,
        Descending
    }

    function ascending() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        quickSort(array, 0, ARRAY_SIZE, Direction.Ascending);

        bool isOneFirst = array[0] == 1;
        bool isTenLast = array[ARRAY_SIZE - 1] == 10;
        bool result = isOneFirst && isTenLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function descending() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory array = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        quickSort(array, 0, ARRAY_SIZE, Direction.Descending);

        bool isTenFirst = array[0] == 10;
        bool isOneLast = array[ARRAY_SIZE - 1] == 1;
        bool result = isTenFirst && isOneLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function quickSort(
        uint8[ARRAY_SIZE] memory array,
        uint8 begin,
        uint8 end,
        Direction direction
    )
    private pure
    {
        if (end - begin < 2) {
            return;
        }

        uint8 pivot = array[end - 1];
        uint8 i = begin;

        for(uint8 j = begin; j < end - 1; j++) {
            if (
                (direction == Direction.Ascending && array[j] < pivot) ||
                (direction == Direction.Descending && array[j] > pivot)
            ) {
                uint8 temp = array[i];
                array[i] = array[j];
                array[j] = temp;
                i++;
            }
        }
        array[end - 1] = array[i];
        array[i] = pivot;

        quickSort(array, begin, i, direction);
        quickSort(array, i + 1, end, direction);
    }
}
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
        mergeSort(array, Direction.None);

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
        mergeSort(array, Direction.Ascending);

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
        mergeSort(array, Direction.Descending);

        bool isTenFirst = array[0] == 10;
        bool isOneLast = array[ARRAY_SIZE - 1] == 1;
        bool result = isTenFirst && isOneLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    // Iterative merge sort
    // with memory usage (O(n)) and complexity O(n*log(n))
    function mergeSort(uint8[ARRAY_SIZE] memory array, Direction direction) private pure {
        uint8 size = 1;
        uint8[ARRAY_SIZE] memory tmp;

        while (size < ARRAY_SIZE) {
            uint8 ptr = 0;
            while (ptr < ARRAY_SIZE) {
                uint8 mid = ptr + size;
                if (mid > ARRAY_SIZE) {
                    mid = ARRAY_SIZE;
                }

                uint8 last = ptr + 2 * size;
                if (last > ARRAY_SIZE) {
                    last = ARRAY_SIZE;
                }

                uint8 ptr1 = ptr;
                uint8 ptr2 = ptr + size;

                while (ptr1 < mid && ptr2 < last) {
                    if (
                        (direction == Direction.None) ||
                        (direction == Direction.Ascending && array[ptr1] < array[ptr2]) ||
                        (direction == Direction.Descending && array[ptr1] > array[ptr2])
                    ) {
                        tmp[ptr] = array[ptr1++];
                    } else {
                        tmp[ptr] = array[ptr2++];
                    }
                    ptr++;
                }

                while (ptr1 < mid) {
                    tmp[ptr++] = array[ptr1++];
                }

                while (ptr2 < last) {
                    tmp[ptr++] = array[ptr2++];
                }
            }
            for(uint8 i = 0; i < ARRAY_SIZE; i++)
                array[i] = tmp[i];
            size *= 2;
        }
    }
}
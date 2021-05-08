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
        mergeSort(array, 0, ARRAY_SIZE, Direction.None);

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
        mergeSort(array, 0, ARRAY_SIZE, Direction.Ascending);

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
        mergeSort(array, 0, ARRAY_SIZE, Direction.Descending);

        bool isTenFirst = array[0] == 10;
        bool isOneLast = array[ARRAY_SIZE - 1] == 1;
        bool result = isTenFirst && isOneLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function merge(
        uint8[ARRAY_SIZE] memory array,
        uint8 begin,
        uint8 end,
        uint8 mid,
        Direction direction
    )
        private pure
    {
        uint8[ARRAY_SIZE] memory tmp;
        for(uint8 i = begin; i < end; i++) {
            tmp[i] = array[i];
        }

        uint8 ptr = begin;
        uint8 ptr1 = begin;
        uint8 ptr2 = mid;

        while (ptr1 < mid && ptr2 < end) {
            if(
                (direction == Direction.None) ||
                (direction == Direction.Ascending && tmp[ptr1] < tmp[ptr2]) ||
                (direction == Direction.Descending && tmp[ptr1] > tmp[ptr2])
            ) {
                array[ptr] = tmp[ptr1++];
            } else {
                array[ptr] = tmp[ptr2++];
            }
            ptr++;
        }

        while (ptr1 < mid) {
            array[ptr++] = tmp[ptr1++];
        }

        while (ptr2 < end) {
            array[ptr++] = tmp[ptr2++];
        }
    }

    function mergeSort(
        uint8[ARRAY_SIZE] memory array,
        uint8 begin,
        uint8 end,
        Direction direction
    )
        private pure
    {
        if (begin + 1 == end) {
            return;
        }

        uint8 mid = (begin + end) / 2;
        mergeSort(array, begin, mid, direction);
        mergeSort(array, mid, end, direction);
        merge(array, begin, end, mid, direction);
    }
}
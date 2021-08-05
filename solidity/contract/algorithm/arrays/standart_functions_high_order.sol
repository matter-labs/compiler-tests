//! { "cases": [ {
//!     "name": "reverseTest",
//!     "input": [
//!         {
//!             "entry": "reverseTest",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "uniqueTest",
//!     "input": [
//!         {
//!             "entry": "uniqueTest",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "filterGreater",
//!     "input": [
//!         {
//!             "entry": "filterGreater",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "filterLess",
//!     "input": [
//!         {
//!             "entry": "filterLess",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "filterDivide",
//!     "input": [
//!         {
//!             "entry": "filterDivide",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "mapAdd",
//!     "input": [
//!         {
//!             "entry": "mapAdd",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "mapSub",
//!     "input": [
//!         {
//!             "entry": "mapSub",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "mapMul",
//!     "input": [
//!         {
//!             "entry": "mapMul",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "mapDiv",
//!     "input": [
//!         {
//!             "entry": "mapDiv",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "entry": "complex",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    struct Vector {
        uint8[ARRAY_SIZE] array;
        uint8 size;
    }

    function reverseTest() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        uint8[ARRAY_SIZE] memory output = reverse(fromArray(input, ARRAY_SIZE)).array;

        bool isSixFirst = output[0] == 6;
        bool isSevenLast = output[ARRAY_SIZE - 1] == 7;
        bool isThreeFifth = output[4] == 3;
        bool result = isSixFirst && isSevenLast && isThreeFifth;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function uniqueTest() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 7, 8, 10, 10, 5, 8, 9, 7];
        Vector memory output = unique(fromArray(input, ARRAY_SIZE));

        bool isSizeSix = output.size == 6;
        bool isSevenFirst = output.array[0] == 7;
        bool isNineLast = output.array[output.size - 1] == 9;
        bool result = isSizeSix && isSevenFirst && isNineLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function filterGreater() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 7, 8, 10, 10, 5, 8, 9, 7];
        Vector memory output = filter(fromArray(input, ARRAY_SIZE), greater5);

        bool isSizeEight = output.size == 8;
        bool isSevenFirst = output.array[0] == 7;
        bool isSevenLast = output.array[output.size - 1] == 7;
        bool result = isSizeEight && isSevenFirst && isSevenLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function filterLess() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 7, 8, 10, 10, 5, 8, 9, 7];
        Vector memory output = filter(fromArray(input, ARRAY_SIZE), less8);

        bool isSizeFive = output.size == 5;
        bool isSevenFirst = output.array[0] == 7;
        bool isSevenLast = output.array[output.size - 1] == 7;
        bool result = isSizeFive && isSevenFirst && isSevenLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function filterDivide() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 7, 8, 10, 10, 5, 8, 9, 7];
        Vector memory output = filter(fromArray(input, ARRAY_SIZE), divide2);

        bool isSizeFive = output.size == 5;
        bool isTwoFirst = output.array[0] == 2;
        bool isEightLast = output.array[output.size - 1] == 8;
        bool result = isSizeFive && isTwoFirst && isEightLast;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function mapAdd() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        uint8[ARRAY_SIZE] memory output = map(fromArray(input, ARRAY_SIZE), add28).array;

        bool is35First = output[0] == 35;
        bool is34Last = output[ARRAY_SIZE - 1] == 34;
        bool is38Fifth = output[4] == 38;
        bool result = is35First && is34Last && is38Fifth;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function mapSub() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [18, 12, 7, 9, 21, 6, 22, 14, 9, 34];
        uint8[ARRAY_SIZE] memory output = map(fromArray(input, ARRAY_SIZE), sub5).array;

        bool is13First = output[0] == 13;
        bool is29Last = output[ARRAY_SIZE - 1] == 29;
        bool is16Fifth = output[4] == 16;
        bool result = is13First && is29Last && is16Fifth;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function mapMul() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [7, 2, 1, 8, 10, 3, 5, 4, 9, 6];
        uint8[ARRAY_SIZE] memory output = map(fromArray(input, ARRAY_SIZE), mul7).array;

        bool is49First = output[0] == 49;
        bool is42Last = output[ARRAY_SIZE - 1] == 42;
        bool is70Fifth = output[4] == 70;
        bool result = is49First && is42Last && is70Fifth;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function mapDiv() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [18, 12, 7, 9, 21, 6, 22, 14, 9, 34];
        uint8[ARRAY_SIZE] memory output = map(fromArray(input, ARRAY_SIZE), div4).array;

        bool is4First = output[0] == 4;
        bool is8Last = output[ARRAY_SIZE - 1] == 8;
        bool is5Fifth = output[4] == 5;
        bool result = is4First && is8Last && is5Fifth;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function complex() public pure returns(uint64) {
        uint8[ARRAY_SIZE] memory input = [18, 12, 7, 9, 21, 6, 22, 14, 9, 34];
        Vector memory output = fromArray(input, ARRAY_SIZE);
        output = filter(output, divide2);
        output = reverse(output);
        output = map(output, mul2);
        output = filter(output, less60);
        output = map(output, add4);
        output = filter(output, divide8);
        output = map(output, div7);

        bool isSizeFour = output.size == 4;
        bool is4First = output.array[0] == 4;
        bool is6Second = output.array[1] == 6;
        bool is2Third = output.array[2] == 2;
        bool is5Last = output.array[output.size - 1] == 5;
        bool result = isSizeFour && is4First && is6Second && is2Third && is5Last;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function greater5(uint8 a) private pure returns(bool) {
        return a > 5;
    }

    function less8(uint8 a) private pure returns(bool) {
        return a < 8;
    }

    function divide2(uint8 a) private pure returns(bool) {
        return a % 2 == 0;
    }

    function add28(uint8 a) private pure returns(uint8) {
        return a + 28;
    }

    function sub5(uint8 a) private pure returns(uint8) {
        return a - 5;
    }

    function mul7(uint8 a) private pure returns(uint8) {
        return a * 7;
    }

    function div4(uint8 a) private pure returns(uint8) {
        return a / 4;
    }

    function mul2(uint8 a) private pure returns(uint8) {
        return a * 2;
    }

    function less60(uint8 a) private pure returns(bool) {
        return a < 60;
    }

    function add4(uint8 a) private pure returns(uint8) {
        return a + 4;
    }

    function divide8(uint8 a) private pure returns(bool) {
        return a % 8 == 0;
    }

    function div7(uint8 a) private pure returns(uint8) {
        return a / 7;
    }

    function fromArray(uint8[ARRAY_SIZE] memory array, uint8 size) private pure returns(Vector memory) {
        return Vector(array, size);
    }

    function copy(Vector memory vector) private pure returns(Vector memory) {
        Vector memory _new;
        _new.size = vector.size;
        for(uint8 i = 0; i < vector.size; i++) {
            _new.array[i] = vector.array[i];
        }
        return _new;
    }

    function reverse(Vector memory vector) private pure returns(Vector memory) {
        Vector memory result = copy(vector);
        for(uint i = 0; i < result.size / 2; i++) {
            uint8 tmp = result.array[i];
            result.array[i] = result.array[result.size - 1 - i];
            result.array[result.size - 1 - i] = tmp;
        }
        return result;
    }

    function unique(Vector memory vector) private pure returns(Vector memory) {
        Vector memory result;
        for(uint8 i = 0; i < vector.size; i++) {
            bool fl = true;
            for(uint8 j = 0; j < i; j++) {
                if (vector.array[i] == vector.array[j]) {
                    fl = false;
                    break;
                }
            }
            if (fl) {
                result.array[result.size] = vector.array[i];
                result.size += 1;
            }
        }
        return result;
    }

    function filter(Vector memory vector, function (uint8) pure returns(bool) f) private pure returns(Vector memory) {
        Vector memory result;
        for(uint8 i = 0; i < vector.size; i++) {
            if (f(vector.array[i])) {
                result.array[result.size] = vector.array[i];
                result.size += 1;
            }
        }
        return result;
    }

    function map(Vector memory vector, function (uint8) pure returns(uint8) f) private pure returns(Vector memory) {
        Vector memory result;
        result.size = vector.size;
        for(uint8 i = 0; i < vector.size; i++) {
            result.array[i] = f(vector.array[i]);
        }
        return result;
    }
}

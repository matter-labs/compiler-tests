//! { "cases": [ {
//!     "entry": "entry0",
//!     "expected": 4
//! }, {
//!     "entry": "entry1",
//!     "expected": 5
//! }, {
//!     "entry": "entry2",
//!     "expected": 6
//! }, {
//!     "entry": "entry3",
//!     "expected": 7
//! },{
//!     "entry": "entry4",
//!     "expected": 99
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry0() public pure returns(uint64) {
        return main(0);
    }

    function entry1() public pure returns(uint64) {
        return main(1);
    }

    function entry2() public pure returns(uint64) {
        return main(2);
    }

    function entry3() public pure returns(uint64) {
        return main(3);
    }

    function entry4() public pure returns(uint64) {
        return main(7);
    }

    function main(uint8 param) private pure returns(uint64) {
        for (uint8 i = 0; i < 10; i++) {
            if (param == 0 && i > 3) {
                return i; // 4
            }
            for (uint8 j = 5; j < 10; j++) {
                if (param == 1) {
                    return param * j; // 5
                }
                for (uint8 k = 0; k < 100; k++) {
                    if (param == 2 && k == 70) {
                        return 6;
                    }
                }
            }
            if (param == 3) {
                return param * 2 + 1; // 7
            }
        }
        return 99;
    }
}
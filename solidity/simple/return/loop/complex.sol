//! { "cases": [ {
//!     "name": "entry0",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! }, {
//!     "name": "entry1",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! }, {
//!     "name": "entry2",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
//!     ]
//! }, {
//!     "name": "entry3",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "7"
//!     ]
//! }, {
//!     "name": "entry4",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "99"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    function main(uint8 param) public pure returns(uint64) {
        for (uint8 i = 0; i < 10; i++) {
            if (param == 0 && i == 2) {
                return i * 2; // 4
            }
            do {
                if (param == 1) {
                    return 5;
                }
                uint8 j = 10;
                while (j > 0) {
                    if (param == 2 && j == 4) {
                        return param + j; // 6
                    }
                    j -= 2;
                }
                break;
            } while (true);
            if (param == 3 && i == 7) {
                return i;
            }
        }
        return 99;
    }
}
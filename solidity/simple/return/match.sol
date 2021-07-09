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

    function main(uint8 param) private pure returns(uint64 result) {
        assembly {
            switch div(param, 3)
            case 0 {
                switch div(param, 2)
                case 0 {
                    switch param
                    case 0 {
                        result := 4
                    }
                    case 1 {
                        result := mul(param, 5) // 5
                    }
                    default {
                        result := 42
                    }
                }
                default {
                    result := mul(param, 3) // 6
                }
            }
            default {
                switch param
                case 3 {
                    result := add(mul(param, 2), 1) // 7
                }
                default {
                    result := 99
                }
            }
        }
    }
}
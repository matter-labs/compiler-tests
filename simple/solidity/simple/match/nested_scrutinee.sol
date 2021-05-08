//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 100
//! }, {
//!     "entry": "second",
//!     "expected": 200
//! }, {
//!     "entry": "third",
//!     "expected": 255
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint64) {
        return main(1);
    }

    function second() public pure returns(uint64) {
        return main(2);
    }

    function third() public pure returns(uint64) {
        return main(4);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 result;
        assembly {
            let tmp := 0
            switch witness
            case 1 { tmp := 10 }
            case 2 { tmp := 20 }
            default { tmp := 30 }
            switch tmp
            case 10 { result := 100 }
            case 20 { result := 200 }
            default { result := 255 }
        }
        return result;
    }
}

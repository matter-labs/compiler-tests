//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 15
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(5);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 result = 0;
        uint8 i = 0;
        while(i <= witness) {
            result += i;
            i += 1;
        }
        return result;
    }
}

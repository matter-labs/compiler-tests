//! { "ignore": true, "cases": [ {
//!     "entry": "main",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() private pure returns(int8) {
        int8 sum = 0;
        for(int8 i = -10; i < 10; i++) {
            sum += i;
        }
        return sum;
    }
}

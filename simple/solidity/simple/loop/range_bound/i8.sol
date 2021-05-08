//! { "ignore": true, "cases": [ {
//!     "entry": "main",
//!     "expected": 10
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(int8 i = -128; i <= 127; i++) {
            sum += 1;
        }
        return sum;
    }
}

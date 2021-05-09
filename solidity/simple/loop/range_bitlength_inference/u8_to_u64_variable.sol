//! { "cases": [ {
//!     "entry": "main",
//!     "expected": 55
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 limit = 10;
        uint64 sum = 0;
        for(uint64 i = 0; i <= limit; i++) {
            sum += i;
        }
        return sum;
    }
}

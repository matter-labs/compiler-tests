//! { "cases": [ {
//!     "entry": "main",
//!     "expected": 10
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(uint32 i = 4294967285; i <= 4294967294; i++) {
            sum += 1;
        }
        return sum;
    }
}

//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "55"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint64 constant LIMIT = 10;

    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(uint64 i = 0; i <= LIMIT; i++) {
            sum += i;
        }
        return sum;
    }
}

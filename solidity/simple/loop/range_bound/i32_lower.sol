//! { "ignore": true, "cases": [ {
//!     "name": "main",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(int32 i = -2147483648; i <= -2147483639; i++) {
            sum += 1;
        }
        return sum;
    }
}

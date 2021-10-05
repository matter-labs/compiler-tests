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
//!         "10"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(int64 i = -9223372036854775808; i <= -9223372036854775799; i++) {
            sum += 1;
        }
        return sum;
    }
}

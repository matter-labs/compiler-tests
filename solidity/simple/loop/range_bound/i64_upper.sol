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
        // using uint64 instead int64
        for(uint64 i = 9223372036854775797; i <= 9223372036854775806; i++) {
            sum += 1;
        }
        return sum;
    }
}

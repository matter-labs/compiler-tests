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
        //using uint32 instead int32
        for(uint32 i = 2147483637; i <= 2147483646; i++) {
            sum += 1;
        }
        return sum;
    }
}

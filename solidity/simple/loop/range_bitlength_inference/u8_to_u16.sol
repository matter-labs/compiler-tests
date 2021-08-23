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
//!         "2545"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(uint16) {
        uint16 sum = 0;
        for(uint16 i = 250; i < 260; i++) {
            sum += i;
        }
        return sum;
    }
}

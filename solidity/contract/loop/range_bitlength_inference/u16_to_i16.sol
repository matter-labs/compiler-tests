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
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main() public pure returns(int16) {
        int16 sum = 0;
        for(int16 i = -uint16(200); i < 200; i++) {
            sum += i;
        }
        return sum;
    }
}

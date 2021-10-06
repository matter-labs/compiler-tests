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
//!         "-128"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main() public pure returns(int16) {
        int16 sum = 0;
        for(int16 i = -128; i < 128; i++) {
            sum += i;
        }
        return sum;
    }
}

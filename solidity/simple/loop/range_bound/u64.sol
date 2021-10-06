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

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main() public pure returns(uint64) {
        uint64 sum = 0;
        for(uint64 i = 18446744073709551605; i < 18446744073709551615; i++) {
            sum += 1;
        }
        return sum;
    }
}

//! { "cases": [ {
//!     "name": "entry",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint256) {
        bool end = true;

        uint256 sum = 0;
        for (uint8 i = 1; i <= 2; i++) {
            sum += i;

            if (!end) {
                break;
            }
        }

        return sum;
    }
}

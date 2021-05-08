//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 5
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        uint8 i = 0;
        uint64 cnt = 0;
        do {
            i += 1;
            if (i > 10) {
                break;
            }
            if (i % 2 == 0) {
                continue;
            }
            cnt += 1;
        } while(i < 20);
        return cnt;
    }
}

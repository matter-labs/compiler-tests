//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 2
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(31);
    }

    function main(uint8 param) private pure returns(uint64) {
        uint64 cnt = 0;

        uint8 j = 1;
        while (j < 4) {
            for (uint8 h = 0; h < 1; h++) {
                if (param == 4)
                    return 40;
                cnt += 1;
            }
            j *= 2;
        }
        
        return cnt;
    }
}

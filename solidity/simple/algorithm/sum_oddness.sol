//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 5050
//! }, {
//!     "entry": "second",
//!     "expected": 1275
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint256) {
        return main(100, false) + main(100, true);
    }

    function second() public pure returns(uint256) {
        return main(50, true) + main(50, false);
    }

    function main(uint256 a, bool is_odd) private pure returns(uint256) {
        uint256 result = 0;
        for (uint256 i = 1; i <= a; ++i) {
            if (is_odd) {
                if (i % 2 != 0)
                    result += i;
            } else {
                if (i % 2 == 0)
                    result += i;
            }
        }
        return result;
    }
}

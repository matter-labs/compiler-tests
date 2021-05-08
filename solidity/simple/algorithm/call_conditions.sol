//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 42
//! }, {
//!     "entry": "second",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function first() public pure returns(uint256) {
        return main(84, 2, 43) + main(23, 23, 42) - main(22, 2, 3);
    }

    function second() public pure returns(uint256) {
        return main(15, 10, 43) + main(30, 10, 42) - main(3, 1, 3);
    }

    function main(uint256 a, uint256 b, uint256 c) private pure returns(uint256) {
        if (c > 42) {
            return a + b;
        }
        if (c == 42) {
            return a - b;
        }
        return a * b;
    }
}

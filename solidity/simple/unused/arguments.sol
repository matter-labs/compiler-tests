//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(0, 0);
    }

    function main(uint256 a, uint8 b) private pure returns(uint64) {
        return 42;
    }
}

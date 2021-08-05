//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 1024
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return uint64(_default(512));
    }

    function _default(uint256 value) private pure returns(uint256) {
        return value * 2;
    }
}

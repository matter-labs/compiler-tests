//! { "cases": [ {
//!     "entry": "entry",
//!     "engines": ["zkevm"], "expected": 1024
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint248) {
        return _default(512);
    }

    function _default(uint248 value) private pure returns(uint248) {
        return value * 2;
    }
}

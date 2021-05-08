//! { "cases": [ {
//!     "entry": "_false",
//!     "expected": 1
//! }, {
//!     "entry": "_true",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function _false() public pure returns(uint64) {
        if (main(false)) {
            return 1;
        } else {
            return 0;
        }
    }

    function _true() public pure returns(uint64) {
        if (main(true)) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(bool a) private pure returns(bool) {
        return !a;
    }
}

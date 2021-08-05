//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint8) {
        return main(4);
    }

    function main(uint8 witness) private pure returns(uint8) {
        return 14 - (witness / 2 + 5) * 2;
    }
}

//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 81
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(16);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 local1 = 3;
        uint8 local2 = 5;
        uint8 local3 = 2;

        return 19 * 3 - 8 / local1 + (witness / (local2 - 3) + 5) * (8 / local3 / 2);
    }
}

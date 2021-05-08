//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 16
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(4);
    }

    function main(uint8 witness) private pure returns(uint8) {
        return
        1 + (
            2 + (
                3 + (
                    witness
                ) + 3
            ) + 2
        ) + 1;
    }
}

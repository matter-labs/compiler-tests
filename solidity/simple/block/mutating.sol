//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 75
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(50);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8 inner = 25;
        {
            inner += witness;
        }
        return inner;
    }
}

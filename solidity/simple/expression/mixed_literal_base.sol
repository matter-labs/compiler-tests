//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 210
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint64) {
        return main(42);
    }

    function main(uint8 witness) private pure returns(uint8) {
        return uint8(witness + 42e0 + 0x2a + 42 + 0x2A);
    }
}

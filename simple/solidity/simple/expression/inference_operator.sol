//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 64516
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function entry() public pure returns(uint64) {
        return main(4);
    }

    function main(uint8 witness) private pure returns(uint24) {
        return 65536 - 255 * uint24(witness);
    }
}

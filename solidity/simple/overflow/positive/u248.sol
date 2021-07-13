//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(452312848583266388373324160190187140051835877600158453279131187530910662655);
    }

    function main(uint248 witness) private pure returns(uint248) {
        return witness + 1;
    }
}
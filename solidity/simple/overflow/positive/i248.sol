//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(226156424291633194186662080095093570025917938800079226639565593765455331327);
    }

    function main(int248 witness) private pure returns(int248) {
        return witness + 1;
    }
}
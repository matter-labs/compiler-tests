//! { "ignore": true, "cases": [ {
//!     "entry": "default",
//!     "engines": ["zkevm"], "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function default() public pure returns(uint64) {
        return main(115792089237316195423570985008687907853269984665640564039457584007913129639935);
    }

    function main(uint256 witness) private pure returns(uint256) {
        return witness + 1;
    }
}
//! { "ignore": true, "cases": [ {
//!     "entry": "ordinar",
//!     "expected": 213
//! }, {
//!     "entry": "min_to_max",
//!     "expected": 255
//! }, {
//!     "entry": "max_to_min",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function ordinar() public pure returns(uint64) {
        return main(42);
    }

    function min_to_max() public pure returns(uint64) {
        return main(0);
    }

    function max_to_min() public pure returns(uint64) {
        return main(255);
    }

    function main(uint8 a) private pure returns(uint8) {
        return ~a;
    }
}

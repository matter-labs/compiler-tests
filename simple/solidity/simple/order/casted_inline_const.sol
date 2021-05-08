//! { "cases": [ {
//!     "entry": "remainder_zero",
//!     "expected": 5
//! }, {
//!     "entry": "remainder_one",
//!     "expected": 7
//! }, {
//!     "entry": "remainder_two",
//!     "expected": 8
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function remainder_zero() public pure returns(uint64) {
        return main(15);
    }

    function remainder_one() public pure returns(uint64) {
        return main(22);
    }

    function remainder_two() public pure returns(uint64) {
        return main(26);
    }

    function main(uint32 witness) private pure returns(uint32) {
        return witness / uint32(3);
    }
}

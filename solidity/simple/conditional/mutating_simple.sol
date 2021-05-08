//! { "cases": [ {
//!     "entry": "conditionTrue",
//!     "expected": 10
//! }, {
//!     "entry": "conditionFalse",
//!     "expected": 5
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function conditionTrue() public pure returns(uint64) {
        return main(true);
    }

    function conditionFalse() public pure returns(uint64) {
        return main(false);
    }

    function main(bool condition) private pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            result += 5;
        }

        return result;
    }
}

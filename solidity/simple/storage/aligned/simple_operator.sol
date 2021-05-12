//! {  "cases": [ {
//!     "entry": "entry",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint256 field_1;
    uint256 field_2;
    uint256 field_3;

    function entry() public returns(uint64) {
        return main(12);
    }

    function main(uint8 witness) public returns(uint8) {
        field_1 = 3;
        field_2 = 5;
        field_3 = 2;

        return witness + uint8(field_1) * uint8(field_2) * uint8(field_3);
    }
}

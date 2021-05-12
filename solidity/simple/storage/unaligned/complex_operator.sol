//! {  "cases": [ {
//!     "entry": "entry",
//!     "expected": 81
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 field_1;
    uint8 field_2;
    uint8 field_3;

    function entry() public returns(uint64) {
        return main(16);
    }

    function main(uint8 witness) public returns(uint8) {
        field_1 = 3;
        field_2 = 5;
        field_3 = 2;

        return 19 * 3 - 8 / field_1 + (witness / (field_2 - 3) + 5) * (8 / field_3 / 2);
    }
}

//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "16"
//!             ],
//!             "storage": [
//!                 "0x020503"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "81"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint8 field_1;
    uint8 field_2;
    uint8 field_3;

    function main(uint8 witness) public returns(uint8) {
        return 19 * 3 - 8 / field_1 + (witness / (field_2 - 3) + 5) * (8 / field_3 / 2);
    }
}

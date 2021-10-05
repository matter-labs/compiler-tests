//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "58"
//!     ]
//! }, {
//!     "name": "two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "100"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function main(uint8 witness) public pure returns(uint8) {
        uint8 _match;
        if (SCRUTINEE == 0) {
            _match = 10;
        } else if (SCRUTINEE == 1) {
            _match = 20;
        } else if (SCRUTINEE == 42) {
            _match = 100;
        } else {
            _match = 255 - SCRUTINEE;
        }
        return _match - witness;
    }
}

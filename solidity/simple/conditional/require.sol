//! { "cases": [ {
//!     "name": "condition_true",
//!     "input": [
//!         {
//!             "entry": "without_message",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "exception": true
//!     }
//! }, {
//!     "name": "condition_false",
//!     "input": [
//!         {
//!             "entry": "without_message",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! }, {
//!     "name": "condition_true",
//!     "input": [
//!         {
//!             "entry": "with_empty_message",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x8C379A000000000000000000000000000000000000000000000000000000000",
//!         "32",
//!         "0"
//!     ]
//! }, {
//!     "name": "condition_false",
//!     "input": [
//!         {
//!             "entry": "with_empty_message",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! }, {
//!     "name": "condition_true",
//!     "input": [
//!         {
//!             "entry": "with_message",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x8C379A000000000000000000000000000000000000000000000000000000000",
//!         "32",
//!         "5",
//!         "0x4572726F72000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "condition_false",
//!     "input": [
//!         {
//!             "entry": "with_message",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    function without_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5);
        }

        return result;
    }

    function with_empty_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5, "");
        }

        return result;
    }

    function with_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5, "Error");
        }

        return result;
    }
}

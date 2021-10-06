//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "84", "21"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "21"
//!     ]
//! }, {
//!     "name": "two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "three",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "21", "84"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "84"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    struct Wrapper {
        uint16 pointer;
    }

    function main(uint16 _address, uint8 value) public pure returns(uint8 result) {
        Wrapper memory wrapper = Wrapper(_address * 32);
        assembly {
            mstore(mload(wrapper), value)
            result := mload(mload(wrapper))
        }
    }
}
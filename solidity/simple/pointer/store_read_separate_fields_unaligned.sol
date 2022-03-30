//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1", "2", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
//!     ]
//! }, {
//!     "name": "two",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "21", "84"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "147"
//!     ]
//! }, {
//!     "name": "three",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "99", "66", "33"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "198"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Data {
        uint32 a;
        uint32 b;
        uint32 c;
    }

    function main(uint32 a, uint32 b, uint32 c) public pure returns(uint32 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}

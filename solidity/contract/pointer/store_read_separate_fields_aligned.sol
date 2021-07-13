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

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint256 a;
        uint256 b;
        uint256 c;
    }

    function main(uint256 a, uint256 b, uint256 c) public pure returns(uint256 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}
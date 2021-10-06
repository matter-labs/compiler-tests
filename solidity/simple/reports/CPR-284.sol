//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!                 "32", "3", "1", "2", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3", "2", "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function f(bytes32[] memory data) public pure returns(bytes32, bytes32, bytes32) {
        return (data[2], data[1], data[0]);
    }
}
//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!                 "3", "1", "2", "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1", "1", "1", "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function f(bytes32[] memory proposalNames) public pure returns(uint, uint, uint, uint) {
        return (1, 1, 1, 1);
    }
}
//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum List {
        FIRST,
        SECOND
    }

    function opposite(List list) private pure returns(List) {
        if (list == List.FIRST) {
            return List.SECOND;
        } else {
            return List.FIRST;
        }
    }

    function main(List witness) public pure returns(List) {
        return opposite(witness);
    }
}

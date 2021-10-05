//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "2"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    enum List {
        DEFAULT,
        FIRST,
        SECOND,
        THIRD
    }

    function next(List list) private pure returns(List) {
        if (list == List.DEFAULT) {
            return List.FIRST;
        } else if (list == List.FIRST) {
            return List.SECOND;
        } else if (list == List.SECOND) {
            return List.THIRD;
        } else {
            return List.DEFAULT;
        }
    }

    function main(List witness) public pure returns(List) {
        return next(witness);
    }
}

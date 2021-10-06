//! { "cases": [ {
//!     "name": "one",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "30"
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
//!         "600"
//!     ]
//! }, {
//!     "name": "three",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "999999"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "5999994"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    enum List {
        FIRST,
        SECOND,
        THIRD
    }

    function first() private pure returns(List) {
        return List.FIRST;
    }

    function second() private pure returns(List) {
        return List.SECOND;
    }

    function third() private pure returns(List) {
        return List.THIRD;
    }

    function main(uint256 witness) public pure returns(uint256) {
        return (uint256(first()) + 1 + uint256(second()) + 1 + uint256(third()) + 1) * witness;
    }
}

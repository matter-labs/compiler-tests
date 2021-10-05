//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "8"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "48"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    enum List {
        FIRST,
        SECOND,
        THIRD
    }

    function multiplyByAll(List list) private pure returns(uint256) {
        return (uint256(list) + 1) * (uint256(List.FIRST) + 1) * (uint256(List.SECOND) + 1) * (uint256(List.THIRD) + 1);
    }

    function main(uint8 witness) public pure returns(uint256) {
        return multiplyByAll(List.FIRST) * witness;
    }
}

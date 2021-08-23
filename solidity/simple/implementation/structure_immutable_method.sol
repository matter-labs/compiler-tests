//! { "cases": [ {
//!     "name": "main",
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
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
    }

    function sum(Data memory data) private pure returns(uint8) {
        return data.a + data.b + data.c;
    }

    function main(Data memory witness) public pure returns(uint8) {
        return sum(witness);
    }
}

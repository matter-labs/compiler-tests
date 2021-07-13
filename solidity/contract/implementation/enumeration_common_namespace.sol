//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "3"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "51"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    enum Data {
        VALUE
    }

    uint8 constant ANOTHER =  25;

    function test(uint8 witness) private pure returns(uint8) {
        return (uint8(Data.VALUE) + 42 - ANOTHER) * witness;
    }

    function main(uint8 witness) public pure returns(uint8) {
        return test(witness);
    }
}

//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "210"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint8 factor;
    }

    function test(Data memory data, uint8 witness) private pure returns(uint8) {
        return witness * data.factor;
    }

    function main(uint8 witness) public pure returns(uint8) {
        Data memory data = Data(5);
        return test(data, witness);
    }
}

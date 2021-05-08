//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 210
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint8 factor;
    }

    function entry() public pure returns(uint64) {
        return main(42);
    }

    function test(Data memory data, uint8 witness) private pure returns(uint8) {
        return witness * data.factor;
    }

    function main(uint8 witness) private pure returns(uint8) {
        Data memory data = Data(5);
        return test(data, witness);
    }
}

//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 131
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
    }

    function entry() public pure returns(uint64) {
        Data memory input = Data(1, 2, 3);
        return main(input);
    }

    function fill(Data memory data, uint8[3] memory values) private pure returns(Data memory) {
        data.a = values[0];
        data.b = values[1];
        data.c = values[2];
        return data;
    }

    function main(Data memory witness) private pure returns(uint8) {
        Data memory filled = fill(witness, [25, 42, 64]);
        return filled.a + filled.b + filled.c;
    }
}

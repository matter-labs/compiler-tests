//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 33
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint8 value;
    }

    function entry() public pure returns(uint64) {
        return main(25);
    }

    function main(uint8 witness) private pure returns(uint8) {
        uint8[2][2] memory array = [[1, 2], [3, 4]];
        (uint8 a, uint8 b, uint8 c, uint8 d) = (1, 2, 3, 4);
        Data memory structure = Data(witness);

        return array[1][1] + d + structure.value;
    }
}

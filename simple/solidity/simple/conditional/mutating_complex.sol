//! { "cases": [ {
//!     "entry": "conditionTrue",
//!     "expected": 1000256
//! }, {
//!     "entry": "conditionFalse",
//!     "expected": 0
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        bool a;
        uint8 b;
        uint256 c;
    }

    function conditionTrue() public pure returns(uint64) {
       Data memory input = Data(
            false,
            0,
            0
        );

        return main(input, true);
    }

    function conditionFalse() public pure returns(uint64) {
        Data memory input = Data(
            false,
            0,
            0
        );

        return main(input, false);
    }

    function main(Data memory witness, bool condition) private pure returns(uint64) {
        if (condition) {
            witness = Data(
                true,
                255,
                1000000
            );
        }

        if (witness.a) {
            return 1 + uint64(witness.b) + uint64(witness.c);
        } else {
            return 0 + uint64(witness.b) + uint64(witness.c);
        }
    }
}

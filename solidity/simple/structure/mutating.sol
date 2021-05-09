//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 64
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Test {
        uint8 x;
        uint8 y;
        uint8 z;
    }

    function entry() public pure returns(uint64) {
        return main(3);
    }

    function main(uint8 witness) private pure returns(uint8) {
        Test memory test = Test(1, 2, 3);

        test.x += 5 * witness;
        test.y += 7 * witness;
        test.z += 9 * witness;

        return test.z + test.y + test.x - 5;
    }
}

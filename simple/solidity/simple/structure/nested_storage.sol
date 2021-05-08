//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 15
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Inner {
        uint8 value;
    }

    struct Test {
        Inner inner;
    }

    function entry() public pure returns(uint64) {
        return main(3);
    }

    function main(uint8 witness) private pure returns(uint8) {
        Test memory data = Test(Inner(witness * 5));
        return data.inner.value;
    }
}

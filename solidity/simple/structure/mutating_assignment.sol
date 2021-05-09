//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 42
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Inner {
        uint8 value;
    }

    struct Data {
        Inner inner;
    }

    function entry() public pure returns(uint64) {
        Data memory data = Data(Inner(168));

        return main(data, 4).inner.value;
    }

    function main(Data memory data, uint8 divider) private pure returns(Data memory) {
        data.inner.value /= divider;
        return data;
    }
}

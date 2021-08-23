//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "168", "4"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
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

    function main(Data memory data, uint8 divider) public pure returns(Data memory) {
        data.inner.value /= divider;
        return data;
    }
}

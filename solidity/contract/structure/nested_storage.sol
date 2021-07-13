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
//!         "15"
//!     ]
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

    function main(uint8 witness) public pure returns(uint8) {
        Test memory data = Test(Inner(witness * 5));
        return data.inner.value;
    }
}

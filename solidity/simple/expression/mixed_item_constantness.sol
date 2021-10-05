//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "25"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "131"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    uint248 constant CONST = 42;

    function main(uint248 witness) public pure returns(uint248) {
        uint248 local = 64;

        return CONST + local + witness;
    }
}

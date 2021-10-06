//! { "cases": [ {
//!     "name": "f1",
//!     "input": [
//!         {
//!             "entry": "f1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function f1() public pure returns(uint64) {
        return 1;
    }

    function f2(uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6) public pure returns(uint64, uint64) {
        return (1, 1);
    }
}

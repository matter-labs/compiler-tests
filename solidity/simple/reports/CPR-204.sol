//! { "cases": [ {
//!     "name": "test",
//!     "input": [
//!         {
//!             "entry": "test",
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
    function test() public pure returns(uint64) {
        uint64[1][1] memory a;
        a[0][0];
        return 1;
    }
}
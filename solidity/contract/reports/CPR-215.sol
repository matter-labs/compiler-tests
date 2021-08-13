//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function f() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        assert(x[0].length == 0);
        return 0;
    }
}

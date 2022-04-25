//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function f() public pure {
        require(true);
    }

    function entry() public view {
        this.f();
    }
}

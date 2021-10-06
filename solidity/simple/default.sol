//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "first",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "second",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "99"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0;

contract Test {
    function first() public pure returns(uint64) {
        uint64 result = 42;
        return result;
    }

    function second() public pure returns(uint256) {
        uint256 result = 99;
        return result;
    }
}

//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!                 "5"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x0100000000"
//!         ]
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function f(uint x) public returns (uint256 r) {
        return x == 0 ? 2 : f(x - 1)**2;
    }
}

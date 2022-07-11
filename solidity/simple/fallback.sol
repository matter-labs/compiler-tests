//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    fallback(bytes calldata) external returns(bytes memory) {
        return abi.encodePacked(uint256(42));
    }
}

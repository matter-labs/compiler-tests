//! { "cases": [ {
//!     "name": "success",
//!     "input": [
//!         {
//!             "calldata": [
//!                 "7", "6", "0"
//!             ]
//!         },
//!         {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "failure",
//!     "input": [
//!         {
//!             "calldata": [
//!                 "7", "6", "1"
//!             ]
//!         },
//!         {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64561742855845010733841003574689413045507133876990525944586716276079137390592"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint256 c;

    constructor(uint256 a, uint256 b, bool shouldRevert) {
        c = a * b;
        require(!shouldRevert);
    }

    function get() public view returns (uint256) {
        return c;
    }
}

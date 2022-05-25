//! { "cases": [ {
//!     "name": "success",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "7", "6", "0"
//!             ],
//!             "expected": [
//!                 "*"
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
//!             "constructor": true,
//!             "calldata": [
//!                 "7", "6", "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [],
//!         "exception": true
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

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

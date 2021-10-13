//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "100500", "16"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    mapping (uint256 => uint256) data;

    function main(uint256 key, uint256 value) public returns(uint256) {
        data[key] = value * 4;
        return data[key];
    }
}

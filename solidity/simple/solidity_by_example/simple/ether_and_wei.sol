//! { "cases": [ {
//!     "name": "oneWei",
//!     "input": [
//!         {
//!             "entry": "oneWei",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "isOneWei",
//!     "input": [
//!         {
//!             "entry": "isOneWei",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "oneEther",
//!     "input": [
//!         {
//!             "entry": "oneEther",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1000000000000000000"
//!     ]
//! }, {
//!     "name": "isOneEther",
//!     "input": [
//!         {
//!             "entry": "isOneEther",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Test {
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}

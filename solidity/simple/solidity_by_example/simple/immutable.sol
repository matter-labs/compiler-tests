//! { "cases": [ {
//!     "name": "address",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "9823"
//!             ]
//!         }, {
//!             "entry": "MY_ADDRESS",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0"
//!     ]
//! }, {
//!     "name": "uint",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "555555"
//!             ]
//!         }, {
//!             "entry": "MY_UINT",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "555555"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Test {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}


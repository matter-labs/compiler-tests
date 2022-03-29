//! { "cases": [ {
//!     "name": "address",
//!     "input": [
//!         {
//!             "entry": "MY_ADDRESS",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc"
//!     ]
//! }, {
//!     "name": "uint",
//!     "input": [
//!         {
//!             "entry": "MY_UINT",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "123"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}

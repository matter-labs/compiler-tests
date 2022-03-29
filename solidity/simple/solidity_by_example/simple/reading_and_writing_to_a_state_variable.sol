//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "7823982309234984387823489290492314"
//!             ]
//!         }, {
//!             "entry": "num",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "7823982309234984387823489290492314"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "34342312412341234"
//!             ]
//!         }, {
//!             "entry": "set",
//!             "calldata": [
//!                 "-82349283489238"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-82349283489238"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}


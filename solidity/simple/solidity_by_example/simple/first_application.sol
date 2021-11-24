//! { "cases": [ {
//!     "name": "init_value",
//!     "input": [
//!         {
//!             "entry": "count",
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
//!             "entry": "inc",
//!             "calldata": [
//!             ]
//!         }, {
//!             "entry": "count",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "inc",
//!             "calldata": [
//!             ]
//!         }, {
//!             "entry": "inc",
//!             "calldata": [
//!             ]
//!         }, {
//!             "entry": "dec",
//!             "calldata": [
//!             ]
//!         }, {
//!             "entry": "count",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Test {
    uint public count;

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}

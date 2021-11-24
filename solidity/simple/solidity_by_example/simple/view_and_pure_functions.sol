//! { "cases": [ {
//!     "name": "addToXFirst",
//!     "input": [
//!         {
//!             "entry": "addToX",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "addToXSecond",
//!     "input": [
//!         {
//!             "entry": "addToX",
//!             "calldata": [
//!                 "67234736412121212"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "67234736412121213"
//!     ]
//! }, {
//!     "name": "addFirst",
//!     "input": [
//!         {
//!             "entry": "add",
//!             "calldata": [
//!                 "2", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! }, {
//!     "name": "addSecond",
//!     "input": [
//!         {
//!             "entry": "add",
//!             "calldata": [
//!                 "782438347287334342", "512356125631255135132125661271278"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "512356125631255917570472948605620"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Test {
    uint public x = 1;

    // Promise not to modify the state.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}
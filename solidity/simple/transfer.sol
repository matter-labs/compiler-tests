//! { "ignore": true, "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0;

contract Test {
    function main(address payable destination) public returns(uint64) {
        destination.transfer(42);

        return 1;
    }
}

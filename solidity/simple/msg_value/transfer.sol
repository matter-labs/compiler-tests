//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x32C1D44B00000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(address payable destination) public returns(uint64) {
        destination.transfer(42);

        return 1;
    }
}

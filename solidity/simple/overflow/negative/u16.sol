//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [ {
//!         "compiler_version": "<0.8",
//!         "return_data": [
//!             "65535"
//!         ],
//!         "exception": false
//!     }, {
//!         "compiler_version": ">=0.8",
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     } ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint16 witness) public pure returns(uint16) {
        return witness - 1;
    }
}
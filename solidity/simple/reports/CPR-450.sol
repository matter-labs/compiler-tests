//! { "cases": [ {
//!     "name": "test",
//!     "input": [
//!         {
//!             "entry": "verify",
//!             "calldata": [
//!                 "0x20",
//!                 "32",
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function verify(bytes calldata sig) external returns(bytes32) {
        return bytes32(sig[0:32]);
    }
}

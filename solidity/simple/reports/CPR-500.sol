//! { "cases": [ {
//!     "name": "without_argument",
//!     "input": [
//!         {
//!             "entry": "main()",
//!             "caller": "0xdeadbeef00000000000000000000000000000042",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xdeadbeef00000000000000000000000000000042"
//!     ]
//! }, {
//!     "name": "with_argument",
//!     "input": [
//!         {
//!             "entry": "main(address)",
//!             "calldata": [
//!                 "0xdeadbeef00000000000000000000000000000042"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xdeadbeef00000000000000000000000000000042"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(address a) public returns(address) {
        return a;
    }
    function main() external returns(address) {
        return main(msg.sender);
    }
}

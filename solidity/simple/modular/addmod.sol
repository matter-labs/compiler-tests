//! { "cases": [ {
//!     "name": "by_zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42",
//!                 "25",
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42",
//!                 "25",
//!                 "24"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "19"
//!     ]
//! }, {
//!     "name": "overflow",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
//!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
//!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function main(uint x, uint y, uint m) public pure returns(uint) {
        return addmod(x, y, m);
    }
}

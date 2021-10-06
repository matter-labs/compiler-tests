//! { "cases": [ {
//!     "name": "complex",
//!     "input": [
//!         {
//!             "entry": "complex",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function complex() public pure returns(uint64 result) {
        uint24 ptr = 9216 * 32; // for 9215 and less it works
        assembly {
            mstore(ptr, 10)
            result := mload(ptr)
        }
    }
}

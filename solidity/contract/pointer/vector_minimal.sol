//! { "cases": [ {
//!     "name": "simple",
//!     "input": [
//!         {
//!             "entry": "simple",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function simple() public pure returns(uint64) {
        (uint24 ptr, uint16 len) = _new(); // if init without separate function it works

        assembly {
            mstore(ptr, 10)
        }

        len += 1; // if comment this line it will work
        return get(ptr, len, 0); // if get without function (just *vec.0) it works
    }

    function _new() private pure returns(uint24, uint16) {
        return (64, 0);
    }

    function get(uint24 ptr, uint16 len, uint16 index) private pure returns(uint64 result) {
        assembly {
            result := mload(add(ptr, mul(index, 32)))
        }
    }
}

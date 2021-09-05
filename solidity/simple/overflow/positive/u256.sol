//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!         "0x11"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(uint256 witness) public pure returns(uint256) {
        return witness + 1;
    }
}
//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 1
//! } ] }


// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function entry() public pure returns(uint8) {
        return main([false]);
    }

    function main(bool[1] memory a) public pure returns(uint8) {
        return 1;
    }
}

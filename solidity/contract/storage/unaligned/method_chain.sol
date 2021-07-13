//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1024"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint248 a;
    uint248 b;

    function main(uint248 value) public returns(uint248) {
        a = 5;
        b = 11;

        return a + quadruple(triple(double(value))) + b;
    }

    function double(uint248 value) public returns(uint248) {
        return value * 2;
    }

    function triple(uint248 value) public returns(uint248) {
        return 3 * value;
    }

    function quadruple(uint248 value) public returns(uint248) {
        return value * 4;
    }
}

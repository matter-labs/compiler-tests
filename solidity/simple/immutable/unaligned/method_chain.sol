//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "constructor": true,
//!             "calldata": [
//!                 "0x05",
//!                 "0x0b"
//!             ],
//!             "expected": [
//!                 "*"
//!             ]
//!         },
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

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    uint8 immutable a;
    uint8 immutable b;

    constructor(uint8 x, uint8 y) public {
        a = x;
        b = y;
    }

    function double(uint256 _value) internal returns(uint256) {
        return _value * 2;
    }

    function triple(uint256 _value) internal returns(uint256) {
        return 3 * _value;
    }

    function quadruple(uint256 _value) internal returns(uint256) {
        return _value * 4;
    }

    function main(uint256 _value) external returns(uint256) {
        return a + quadruple(triple(double(_value))) + b;
    }
}

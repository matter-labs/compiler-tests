//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 1024
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint256 a;
    uint256 b;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint248 value) public returns(uint248) {
        a = 5;
        b = 11;

        return uint248(a) + quadruple(triple(double(value))) + uint248(b);
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

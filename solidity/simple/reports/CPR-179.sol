//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Str1 {
        uint256 a;
    }

    function entry() public pure returns(uint64) {
        return uint64(main(31, 0, 0, 0, 0, 0, Str1(1)));
    }

    function main(
        uint8 param,
        uint256 p3,
        uint256 p4,
        uint256 p5,
        uint256 p6,
        uint256 p7,
        Str1 memory p8
    )
        private
        pure
        returns(uint256)
    {
        if (param == 31) {
            return p8.a;
        } else {
            return 1;
        }
    }
}

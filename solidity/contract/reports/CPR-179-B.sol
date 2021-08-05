//! { "cases": [ {
//!     "name": "entry",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "0", "0", "0", "0", "0", "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Str1 {
        uint256 a;
    }

    function entry(
        Str1 memory p1,
        uint256 p2,
        uint256 p3,
        uint256 p4,
        uint256 p5,
        uint256 p6
    ) public pure returns(uint256) {
        if (main(0, p1, p2, p3, p4, p5, p6) == 0 &&
            main(7, p1, p2, p3, p4, p5, p6) == 0)
            return 1;
        else
            return 0;
    }

    function main(
        uint8 param,
        Str1 memory p1,
        uint256 p2,
        uint256 p3,
        uint256 p4,
        uint256 p5,
        uint256 p6
    )
        private
        pure
        returns(uint256)
    {
        if (param == 1)
            return p1.a;
        else if (param == 2)
            return p2;
        else if (param == 3)
            return p3;
        else if (param == 4)
            return p4;
        else if (param == 5)
            return p5;
        else if (param == 6)
            return p6;
        else
            return 0;
    }
}

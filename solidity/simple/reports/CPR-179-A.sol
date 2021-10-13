//! { "cases": [ {
//!     "name": "entry",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!                 "31", "0", "0", "0", "0", "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;

contract Test {
    struct Str1 {
        uint256 a;
    }

    function entry(
        uint8 param,
        uint256 p3,
        uint256 p4,
        uint256 p5,
        uint256 p6,
        uint256 p7,
        Str1 memory p8
    )
        public
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

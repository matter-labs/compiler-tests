//! { "cases": [ {
//!     "name": "entry",
//!     "input": [
//!         {
//!             "entry": "entry",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    function entry() public pure returns(uint64) {
        uint8 p1 = 1;
        uint16 p2 = 4;
        uint32 p3 = 9;
        uint64 p4 = 16;
        uint72 p5 = 25;
        uint80 p6 = 36;
        uint96 p7 = 49;
        uint128 p8 = 64;
        uint136 p9 = 81;
        uint144 p10 = 100;
        uint160 p11 = 121;

        bool result = true;

        for (uint8 i = 1; i <= 11; i++) {
            result = result && main(i, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == i * i;
        }

        result = result && main(0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 506;
        result = result && main(16, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) == 506;

        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function main(
        uint8 param,
        uint8 p1,
        uint16 p2,
        uint32 p3,
        uint64 p4,
        uint72 p5,
        uint80 p6,
        uint96 p7,
        uint128 p8,
        uint136 p9,
        uint144 p10,
        uint160 p11
    )
        private
        pure
        returns(uint256 result)
    {
        if (param == 1) {
            result = p1;
        } else if (param == 2) {
            result = p2;
        } else if (param == 3) {
            result = p3;
        } else if (param == 4) {
            result = p4;
        } else if (param == 5) {
            result = p5;
        } else if (param == 6) {
            result = p6;
        } else if (param == 7) {
            result = p7;
        } else if (param == 8) {
            result = p8;
        } else if (param == 9) {
            result = p9;
        } else if (param == 10) {
            result = p10;
        } else if (param == 11) {
            result = p11;
        } else {
            result = p1 + p2 + p3 + p4 + p5;
            result += p6 + p7 + p8 + p9 + p10
                + p11;
        }
    }
}

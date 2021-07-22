//! { "cases": [ {
//!     "name": "noSolution",
//!     "input": [
//!         {
//!             "entry": "noSolution",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "first",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "second",
//!             "calldata": [
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
    uint128 constant EPS = 1E10;
    uint128 constant PRECISION = 100;
    uint128 constant MAX_U128_SQRT = 18446744073709551615;

    function noSolution() public pure returns(uint64) {
        uint128 a = 1;
        uint128 mb = 1; // b = -1
        uint128 c = 1;
        (bool p, uint128 x1, uint128 x2) = main(a, mb, c);
        if (!p) {
            return 1;
        } else {
            return 0;
        }
    }

    function first() public pure returns(uint64) {
        uint128 a = 2;
        uint128 mb = 7; // b = -7
        uint128 c = 4;
        (bool p, uint128 x1, uint128 x2) = main(a, mb, c);
        // check roots * PRECISION
        bool result = p &&
            x1 * PRECISION / EPS == 278 &&
            x2 * PRECISION / EPS == 71;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function second() public pure returns(uint64) {
        uint128 a = 17;
        uint128 mb = 29; // b = -29
        uint128 c = 12;
        (bool p, uint128 x1, uint128 x2) = main(a, mb, c);
        // check roots * PRECISION
        bool result = p &&
            x1 * PRECISION / EPS == 100 &&
            x2 * PRECISION / EPS == 70;
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function sqrt(uint128 n) private pure returns(uint128) {
        // binary search
        uint128 l = 0;
        uint128 r = MAX_U128_SQRT;
        while (l < r) {
            uint128 m = (l + r + 1) / 2;
            if (m*m <= n) {
                l = m;
            } else {
                r = m - 1;
            }
        }
        if (n - l*l < (l+1)*(l+1) - n) {
            return l;
        } else {
            return l + 1;
        }
    }

    // mb = -b
    // returns roots * EPS
    function main(uint128 a, uint128 mb, uint128 c) private pure returns(bool, uint128, uint128) {
        if (mb*mb < 4*a*c) {
            return (false, 0, 0);
        }
        uint128 d = (mb*mb - 4*a*c)*EPS*EPS;
        uint128 sd = sqrt(d);
        uint128 x1 = (mb*EPS + sd) / 2 / a;
        uint128 x2 = (mb*EPS - sd) / 2 / a;
        return (true, x1, x2);
    }
}
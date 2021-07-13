//! { "cases": [ {
//!     "name": "distancePoint1",
//!     "input": [
//!         {
//!             "entry": "distancePoint1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "607"
//!     ]
//! }, {
//!     "name": "distancePoint2",
//!     "input": [
//!         {
//!             "entry": "distancePoint2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "504455"
//!     ]
//! }, {
//!     "name": "intersectionPoint1",
//!     "input": [
//!         {
//!             "entry": "intersectionPoint1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "intersectionPoint2",
//!     "input": [
//!         {
//!             "entry": "intersectionPoint2",
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
    uint128 constant EPS = 1E6;
    uint128 constant PRECISION = 100;

    struct Point {
        uint128 x;
        uint128 y;
    }

    struct Line {
        uint128 a;
        uint128 b;
        uint128 c;
    }

    function distancePoint1() public pure returns(uint64) {
        uint128 a = 7;
        uint128 b = 4;
        uint128 c = 10;
        Line memory line = Line(a, b, c);
        uint128 x = 5;
        uint128 y = 1;
        Point memory point = Point(x, y);
        // 6.077701994871213... * PRECISION
        return uint64(distancePoint(line, point) * PRECISION / EPS);
    }

    function distancePoint2() public pure returns(uint64) {
        uint128 a = 2117;
        uint128 b = 443;
        uint128 c = 1021;
        Line memory line = Line(a, b, c);
        uint128 x = 5123;
        uint128 y = 145;
        Point memory point = Point(x, y);
        // 5044.559794518856... * PRECISION
        return uint64(distancePoint(line, point) * PRECISION / EPS);
    }

    function intersectionPoint1() public pure returns(uint64) {
        uint128 a1 = 1;
        uint128 mb1 = 1;
        uint128 c1 = 0;
        uint128 a2 = 1;
        uint128 b2 = 1;
        uint128 mc2 = 2;
        Point memory point = linesIntersection(a1, mb1, c1, a2, b2, mc2);
        if (point.x * PRECISION / EPS == 100 && point.y * PRECISION / EPS == 100) {
            return 1;
        } else {
            return 0;
        }
    }

    function intersectionPoint2() public pure returns(uint64) {
        uint128 a1 = 121;
        uint128 mb1 = 17;
        uint128 c1 = 123;
        uint128 a2 = 912;
        uint128 b2 = 123;
        uint128 mc2 = 2133;
        // 0.695428.... 12.185112...
        Point memory point = linesIntersection(a1, mb1, c1, a2, b2, mc2);
        if (point.x * PRECISION / EPS == 69 && point.y * PRECISION / EPS == 1218) {
            return 1;
        } else {
            return 0;
        }
    }

    function sqrt(uint128 n) private pure returns(uint128) {
        // binary search
        uint128 l = 0;
        uint128 r = n;
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

    // mb1 == -b1, mc2 == -c2
    // returns x * EPS, y * EPS
    function linesIntersection(uint128 a1, uint128 mb1, uint128 c1, uint128 a2, uint128 b2, uint128 mc2) private pure returns(Point memory) {
        uint128 d = a1 * b2 + a2 * mb1;
        return Point((mb1 * mc2 - b2 * c1) * EPS / d, (a2 * c1 + a1 * mc2) * EPS / d);
    }

    function distancePoint(Line memory line, Point memory point) private pure returns(uint128) {
        return ((line.a * point.x + line.b * point.y + line.c) * EPS * EPS) / sqrt((line.a * line.a + line.b * line.b) * EPS * EPS);
    }
}
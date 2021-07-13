//! { "cases": [ {
//!     "name": "triangle1",
//!     "input": [
//!         {
//!             "entry": "triangle1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "600"
//!     ]
//! }, {
//!     "name": "triangle2",
//!     "input": [
//!         {
//!             "entry": "triangle2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "136937"
//!     ]
//! }, {
//!     "name": "polygon1",
//!     "input": [
//!         {
//!             "entry": "polygon1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1200"
//!     ]
//! }, {
//!     "name": "polygon2",
//!     "input": [
//!         {
//!             "entry": "polygon2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "385600"
//!     ]
//! }, {
//!     "name": "sphere1",
//!     "input": [
//!         {
//!             "entry": "sphere1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "61575"
//!     ]
//! }, {
//!     "name": "sphere2",
//!     "input": [
//!         {
//!             "entry": "sphere2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64106342310051445"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint128 constant EPS = 1E6;
    // PI * EPS^3
    uint128 constant PI = 3141592653589793238;
    uint128 constant PRECISION = 100;
    uint8 constant DIM = 10;

    struct Triangle {
        uint128 a;
        uint128 b;
        uint128 c;
    }

    struct Polygon {
        uint8 n;
        uint128[DIM] x;
        uint128[DIM] y;
    }

    struct Sphere {
        uint128 r;
    }

    function triangle1() public pure returns(uint64) {
        uint128 a = 3;
        uint128 b = 4;
        uint128 c = 5;
        a *= EPS;
        b *= EPS;
        c *= EPS;
        Triangle memory triangle = Triangle(a, b, c);
        // area * PRECISION
        return uint64(triangleArea(triangle) * PRECISION / EPS / EPS);
    }

    function triangle2() public pure returns(uint64) {
        uint128 a = 37;
        uint128 b = 111;
        uint128 c = 87;
        a *= EPS;
        b *= EPS;
        c *= EPS;
        Triangle memory triangle = Triangle(a, b, c);
        // area * PRECISION
        return uint64(triangleArea(triangle) * PRECISION / EPS / EPS);
    }

    function polygon1() public pure returns(uint64) {
        uint128[DIM] memory x;
        uint128[DIM] memory y;
        x[0] = 2;
        y[0] = 4;
        x[1] = 4;
        y[1] = 3;
        x[2] = 5;
        y[2] = 1;
        x[3] = 3;
        y[3] = 0;
        x[4] = 0;
        y[4] = 0;
        for(uint8 i = 0; i < 5; i++) {
            x[i] *= EPS;
            y[i] *= EPS;
        }
        Polygon memory polygon = Polygon(5, x, y);
        // area * PRECISION
        return uint64(polygonArea(polygon) * PRECISION / EPS / EPS);
    }

    function polygon2() public pure returns(uint64) {
        uint128[DIM] memory x;
        uint128[DIM] memory y;
        x[0] = 13;
        y[0] = 21;
        x[1] = 17;
        y[1] = 29;
        x[2] = 111;
        y[2] = 111;
        x[3] = 113;
        y[3] = 92;
        x[4] = 55;
        y[4] = 7;
        x[5] = 31;
        y[5] = 7;
        x[6] = 1;
        y[6] = 1;
        for(uint8 i = 0; i < 7; i++) {
            x[i] *= EPS;
            y[i] *= EPS;
        }
        Polygon memory polygon = Polygon(7, x, y);
        // area * PRECISION
        return uint64(polygonArea(polygon) * PRECISION / EPS / EPS);
    }

    function sphere1() public pure returns(uint64) {
        uint128 r = 7;
        Sphere memory sphere = Sphere(r);
        // surface * PRECISION
        return uint64(sphereSurface(sphere, PI) * PRECISION / EPS / EPS / EPS);
    }

    function sphere2() public pure returns(uint64) {
        uint128 r = 7142423;
        Sphere memory sphere = Sphere(r);
        // surface * PRECISION
        return uint64(sphereSurface(sphere, PI) * PRECISION / EPS / EPS / EPS);
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

    function triangleArea(Triangle memory triangle) private pure returns(uint128) {
        uint128 p = (triangle.a + triangle.b + triangle.c) / 2;
        return sqrt(p * (p - triangle.a) * (p - triangle.b) * (p - triangle.c));
    }

    function polygonArea(Polygon memory polygon) private pure returns(uint128) {
        uint128 s = 0;
        for(uint8 i = 1; i < polygon.n; i++) {
            s += (polygon.x[i] - polygon.x[i - 1]) * (polygon.y[i] + polygon.y[i - 1]);
        }
        s += (polygon.x[0] - polygon.x[polygon.n - 1]) * (polygon.y[0] + polygon.y[polygon.n - 1]);
        return s/2;
    }

    function sphereSurface(Sphere memory sphere, uint128 pi) private pure returns(uint128) {
        return 4 * pi * sphere.r * sphere.r;
    }
}
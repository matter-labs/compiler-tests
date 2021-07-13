//! { "cases": [ {
//!     "name": "cube1",
//!     "input": [
//!         {
//!             "entry": "cube1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "27"
//!     ]
//! }, {
//!     "name": "cube2",
//!     "input": [
//!         {
//!             "entry": "cube2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "30422169911604024"
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
//!         "143675"
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
//!         "151504289520102405"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint128 constant EPS = 1E6;
    // PI * EPS^3
    uint128 constant PI = 3141592653589793238;
    uint128 constant PRECISION = 100;

    struct Cube {
        uint128 a;
    }

    struct Sphere {
        uint128 r;
    }

    function cube1() public pure returns(uint64) {
        uint128 a = 3;
        Cube memory cube = Cube(a);
        return uint64(cubeVolume(cube));
    }

    function cube2() public pure returns(uint64) {
        uint128 a = 312174;
        Cube memory cube = Cube(a);
        return uint64(cubeVolume(cube));
    }

    function sphere1() public pure returns(uint64) {
        uint128 r = 7;
        Sphere memory sphere = Sphere(r);
        // volume * PRECISION
        return uint64(sphereVolume(sphere, PI) * PRECISION / EPS / EPS / EPS);
    }

    function sphere2() public pure returns(uint64) {
        uint128 r = 71249;
        Sphere memory sphere = Sphere(r);
        // volume * PRECISION
        return uint64(sphereVolume(sphere, PI) * PRECISION / EPS / EPS / EPS);
    }

    function cubeVolume(Cube memory cube) private pure returns(uint128) {
        return cube.a * cube.a * cube.a;
    }

    function sphereVolume(Sphere memory sphere, uint128 pi) private pure returns(uint128) {
        return 4 * pi * sphere.r * sphere.r * sphere.r / 3;
    }

}
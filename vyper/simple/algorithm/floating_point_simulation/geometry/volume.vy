#! { "cases": [ {
#!     "name": "cube1",
#!     "input": [
#!         {
#!             "entry": "cube",
#!             "calldata": [
#!                 "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "27"
#!     ]
#! }, {
#!     "name": "cube2",
#!     "input": [
#!         {
#!             "entry": "cube",
#!             "calldata": [
#!                 "312174"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "30422169911604024"
#!     ]
#! }, {
#!     "name": "sphere1",
#!     "input": [
#!         {
#!             "entry": "sphere",
#!             "calldata": [
#!                 "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "143675"
#!     ]
#! }, {
#!     "name": "sphere2",
#!     "input": [
#!         {
#!             "entry": "sphere",
#!             "calldata": [
#!                 "71249"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "151504289520102405"
#!     ]
#! } ] }

EPS: constant(uint256) = 1000000
# PI * EPS^3
PI: constant(uint256) = 3141592653589793238
PRECISION: constant(uint256) = 100

struct Cube:
    a: uint256

struct Sphere:
    r: uint256

@internal
@pure
def cubeVolume(cube: Cube) -> uint256:
    return cube.a * cube.a * cube.a

@internal
@pure
def sphereVolume(sphere: Sphere, pi: uint256) -> uint256:
    return 4 * pi * sphere.r * sphere.r * sphere.r / 3

@external
def cube(cube: Cube) -> uint256:
    return self.cubeVolume(cube)

@external
def sphere(sphere: Sphere) -> uint256:
    # volume * PRECISION
    return self.sphereVolume(sphere, PI) * PRECISION / EPS / EPS / EPS

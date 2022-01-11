#! { "cases": [ {
#!     "name": "zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-42"
#!     ]
#! }, {
#!     "name": "max_to_min",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-127"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "200"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "56"
#!     ]
#! }, {
#!     "name": "overflow_minimal",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "129"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! } ] }

@external
@pure
def main(a: uint8) -> int128:
    return -convert(a, int128)

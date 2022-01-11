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
#!     "name": "ordinar_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "ordinar_positive",
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
#!     "name": "almost_min_to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! } ] }

@external
@pure
def main(a: int128) -> int128:
    return -a

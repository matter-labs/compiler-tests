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
#!         "42"
#!     ]
#! }, {
#!     "name": "max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! }, {
#!     "name": "overflow_negative_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "255"
#!     ]
#! }, {
#!     "name": "overflow_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "214"
#!     ]
#! } ] }

@external
@pure
def main(a: int128) -> uint8:
    return convert(a, uint8)

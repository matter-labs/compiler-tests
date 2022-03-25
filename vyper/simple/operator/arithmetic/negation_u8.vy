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
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "200"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "129"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: uint8) -> int128:
    return -convert(a, int128)

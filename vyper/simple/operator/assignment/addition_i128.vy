#! { "cases": [ {
#!     "name": "zero_zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0"
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
#!                 "-42", "25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-17"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "85"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "100", "50"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001100000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_minimal",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "100", "28"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001100000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> int128:
    c: int128 = a
    c += b
    return c

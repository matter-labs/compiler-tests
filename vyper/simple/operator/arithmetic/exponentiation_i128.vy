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
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "81"
#!     ]
#! }, {
#!     "name": "ordinar_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "80"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "147808829414345923316083210206383297601"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "100"
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
#!                 "81"
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
def main(a: int128) -> int128:
    return -3 ** a

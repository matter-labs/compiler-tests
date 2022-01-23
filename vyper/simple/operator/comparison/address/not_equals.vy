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
#!     "name": "ordinar_true_lesser",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "25", "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_true_bigger",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_false",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "max_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0xffffffffffffffffffffffffffffffffffffffff", "0xffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: address, b: address) -> bool:
    return a != b
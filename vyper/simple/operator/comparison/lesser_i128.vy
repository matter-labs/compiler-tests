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
#!                 "-25", "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "ordinar_false_bigger",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "-25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_false_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42", "-42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_false_positive",
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
#!     "name": "min_min",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105728", "-170141183460469231731687303715884105728"
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
#!                 "170141183460469231731687303715884105727", "170141183460469231731687303715884105727"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> bool:
    return a < b

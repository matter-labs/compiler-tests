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
#!                 "-129"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! }, {
#!     "name": "overflow_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-1000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "24"
#!     ]
#! }, {
#!     "name": "overflow_positive_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "128"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-128"
#!     ]
#! }, {
#!     "name": "overflow_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-24"
#!     ]
#! } ] }

@external
@pure
def main(a: int256) -> int128:
    return convert(a, int128)

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
#!                 "170141183460469231731687303715884105727"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "170141183460469231731687303715884105727"
#!     ]
#! }, {
#!     "name": "overflow_positive_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105728"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-170141183460469231731687303715884105728"
#!     ]
#! }, {
#!     "name": "overflow_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "21270141183460469231731687303715884105728"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-167647932558653966460912964485513216002"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256) -> int128:
    return convert(a, int128)

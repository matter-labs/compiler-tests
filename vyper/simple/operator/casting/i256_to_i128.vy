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
#!     "name": "overflow_negative_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105729"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-180141183460469231731687303715887105728"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
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
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "190141183460469231731687303715884105728"
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
def main(a: int256) -> int128:
    return convert(a, int128)

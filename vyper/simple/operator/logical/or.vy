#! { "cases": [ {
#!     "name": "false_false",
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
#!     "name": "false_true",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "true_false",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "true_true",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def main(a: bool, b: bool) -> bool:
    return a or b

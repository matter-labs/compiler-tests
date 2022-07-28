#! { "cases": [ {
#!     "name": "min",
#!     "input": [
#!         {
#!             "entry": "entry_min",
#!             "calldata": [
#!                 "5",
#!                 "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "max",
#!     "input": [
#!         {
#!             "entry": "entry_max",
#!             "calldata": [
#!                 "5",
#!                 "10"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! } ] }

@external
def entry_min(a: uint256, b: uint256) -> uint256:
    return min(a, b)

@external
def entry_max(a: uint256, b: uint256) -> uint256:
    return max(a, b)

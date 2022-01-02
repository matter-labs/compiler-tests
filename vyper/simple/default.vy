#! { "cases": [ {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "first",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "second",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "99"
#!     ]
#! } ] }

@external
def first() -> uint256:
    result: uint256 = 42
    return result

@external
def second() -> uint256:
    result: uint256 = 99
    return result

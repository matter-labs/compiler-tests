#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "fallback": true,
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

@external
def __default__() -> uint256:
    return 42

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "168"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256) -> uint256:
    return shift(a, 2)

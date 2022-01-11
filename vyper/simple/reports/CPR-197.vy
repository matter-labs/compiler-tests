#! { "cases": [ {
#!     "name": "f1",
#!     "input": [
#!         {
#!             "entry": "f1",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def f1() -> uint256:
    return 1

@external
@pure
def f2(a1: uint256, a2: uint256, a3: uint256, a4: uint256, a5: uint256, a6: uint256) -> (uint256, uint256):
    return (1, 1)

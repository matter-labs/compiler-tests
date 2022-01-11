#! { "cases": [ {
#!     "name": "test",
#!     "input": [
#!         {
#!             "entry": "test",
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
def test() -> uint256:
    a: uint256[1][1] = [[0]]
    a[0][0] = a[0][0]
    return 1

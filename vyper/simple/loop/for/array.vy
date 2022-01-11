#! { "cases": [ {
#!     "name": "entry",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15"
#!     ]
#! } ] }

@external
@pure
def entry() -> uint256:
    sum: uint256 = 0
    arr: uint256[5] = [1, 2, 3, 4, 5]
    for i in arr:
        sum += i
    return sum

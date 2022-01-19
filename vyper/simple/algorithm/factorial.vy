#! { "cases": [ {
#!     "name": "one",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "120"
#!     ]
#! }, {
#!     "name": "two",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "6"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "720"
#!     ]
#! }, {
#!     "name": "three",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5040"
#!     ]
#! } ] }

@external
@pure
def main(n: uint8) -> uint256:
    fact: uint256 = 1
    for i in range(1, 100):
        if not i <= n:
            break
        fact *= convert(i, uint256)
    return fact

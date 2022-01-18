#! { "cases": [ {
#!     "name": "one",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "12"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "89"
#!     ]
#! }, {
#!     "name": "two",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "14"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "233"
#!     ]
#! }, {
#!     "name": "three",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "16"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "610"
#!     ]
#! } ] }

@external
@pure
def main(n: uint8) -> uint256:
    value1: uint256 = 0
    value2: uint256 = 1
    fibo: uint256 = value1

    for i in range(1, 100):
        if not i <= n - 2:
            break
        fibo = value1 + value2
        value1 = value2
        value2 = fibo

    return fibo

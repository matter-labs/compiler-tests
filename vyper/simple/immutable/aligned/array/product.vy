#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "20", "15", "10", "5"
#!             ],
#!             "expected": [
#!                 "*"
#!             ]
#!         },
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15000"
#!     ]
#! } ] }

data: immutable(uint256[4])

@external
def __init__(input: uint256[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i in range(0, 4):
        product *= data[i]
    return product

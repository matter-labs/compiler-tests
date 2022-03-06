#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "20", "15", "10", "5"
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

data: immutable(uint8[4])

@external
def __init__(input: uint8[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i in range(0, 4):
        product *= convert(data[i], uint256)
    return product

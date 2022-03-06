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
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "20", "15", "10", "5"
#!     ]
#! } ] }

data: immutable(uint256[4])

@external
def __init__(input: uint256[4]):
    data = input

@external
def main() -> uint256[4]:
    return data

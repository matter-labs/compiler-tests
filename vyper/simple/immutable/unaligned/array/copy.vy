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

data: immutable(uint8[4])

@external
def __init__(input: uint8[4]):
    data = input

@external
def main() -> uint8[4]:
    return data

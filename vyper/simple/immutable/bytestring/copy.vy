#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "32", "8", "0x0102030405060708000000000000000000000000000000000000000000000000"
#!             ]
#!         },
#!         {
#!             "entry": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "32", "8", "0x0102030405060708000000000000000000000000000000000000000000000000"
#!     ]
#! } ] }

data: immutable(Bytes[8])

@external
def __init__(input: Bytes[8]):
    data = input

@external
def main() -> Bytes[8]:
    return data

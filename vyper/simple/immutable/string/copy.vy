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

data: immutable(String[8])

@external
def __init__(input: String[8]):
    data = input

@external
def main() -> String[8]:
    return data

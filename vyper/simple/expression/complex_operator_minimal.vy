#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint8) -> uint8:
    return 14 - (witness / 2 + 5) * 2

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
#!         "12"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint8) -> uint8:
    return 1 + (2 + 2 * witness) + 1

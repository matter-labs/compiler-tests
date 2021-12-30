#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "131"
#!     ]
#! } ] }

CONST: constant(uint256) = 42

@external
@pure
def main(witness: uint256) -> uint256:
    local: uint256 = 64

    return CONST + local + witness

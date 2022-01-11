#! { "cases": [ {
#!     "name": "remainder_zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "15"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "5"
#!     ]
#! }, {
#!     "name": "remainder_one",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "22"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7"
#!     ]
#! }, {
#!     "name": "remainder_two",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "26"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint256) -> uint256:
    variable: uint8 = 3
    return witness / convert(variable, uint256)

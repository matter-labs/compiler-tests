#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "210"
#!     ]
#! } ] }

@external
@pure
def main(witness: uint8) -> uint8:
    return convert(convert(witness, uint256) + convert(42e0, uint256) + convert(0x2a, uint256) + convert(42, uint256) + convert(0x2A, uint256), uint8)

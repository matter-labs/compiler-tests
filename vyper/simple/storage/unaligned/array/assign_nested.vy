#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "0x100f0e0d0c0b0a090807060504030201"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

data: uint8[4][4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3][3] = argument

    return argument + TEST + self.data[3][3]

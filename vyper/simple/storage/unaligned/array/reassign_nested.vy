#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "0x04030201",
#!                 "0x08070605",
#!                 "0x0c0b0a09",
#!                 "0x100f0e0d"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "142"
#!     ]
#! } ] }

data: uint8[4][4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3][3] += argument

    return argument + TEST + self.data[3][3]

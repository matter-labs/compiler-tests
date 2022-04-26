#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "1", "2", "3", "4"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

data: uint256[4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3] = convert(argument, uint256)

    return argument + TEST + convert(self.data[3], uint8)

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "99", "100", "101"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "226"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

struct Data:
    value: uint256
    next: uint256
    last: uint256

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.next += convert(argument, uint256)

    return argument + TEST + convert(self.data.next, uint8)

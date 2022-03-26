#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "0000000000000000000000000000000000000000": [
#!                 "20", "15", "10", "5"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

struct Data:
    a: uint256
    b: uint256
    c: uint256
    d: uint256

data: Data

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    sum += convert(self.data.a, uint8)
    sum += convert(self.data.b, uint8)
    sum += convert(self.data.c, uint8)
    sum += convert(self.data.d, uint8)
    return sum

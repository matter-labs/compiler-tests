#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "20", "15", "10", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15000"
#!     ]
#! } ] }

struct Data:
    a: uint256
    b: uint256
    c: uint256
    d: uint256

data: Data

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= self.data.a
    product *= self.data.b
    product *= self.data.c
    product *= self.data.d
    return product

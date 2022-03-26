#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "0000000000000000000000000000000000000000": [
#!                 "99", "100", "101"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

struct Inner:
    value: uint256
    next: uint256
    last: uint256

struct Data:
    inner: Inner

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.inner.next = convert(argument, uint256)

    return argument + TEST + convert(self.data.inner.next, uint8)

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "0x656463"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! } ] }

TEST: constant(uint8) = 42

struct Data:
    value: uint8
    next: uint8
    last: uint8

data: Data

@external
def main(argument: uint8) -> uint8:
    self.data.next = argument

    return argument + TEST + self.data.next

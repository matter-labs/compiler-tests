#! { "cases": [ {
#!     "name": "f",
#!     "input": [
#!         {
#!             "entry": "f",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

m1: HashMap[uint8, uint8]

@external
def f() -> uint8:
    self.m1[1] = 42
    return self.m1[1]

#! { "cases": [ {
#!     "name": "complex",
#!     "input": [
#!         {
#!             "entry": "complex",
#!             "calldata": [
#!             ],
#!             "storage": { "0000000000000000000000000000000000000000": [
#!                 "1"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

KEY: uint8[1]

@external
def complex() -> uint8:
    self.KEY = [1]
    return self.KEY[0]

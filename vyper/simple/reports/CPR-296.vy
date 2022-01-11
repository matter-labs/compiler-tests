#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "32"
#!             ]
#!         },
#!         {
#!             "entry": "_get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

a: uint256

# if remove constructor or param - it works
@external
def __init__(b: uint256):
    self.a = 0

@external
@view
def _get() -> uint256:
    return self.a

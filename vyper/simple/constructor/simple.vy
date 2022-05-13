#! { "cases": [ {
#!     "name": "success",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "7", "6", "0"
#!             ]
#!         },
#!         {
#!             "entry": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "failure",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "7", "6", "1"
#!             ],
#!             "expected": {
#!                 "return_data": [],
#!                 "exception": true
#!             }
#!         },
#!         {
#!             "entry": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

c: uint256

@external
def __init__(a: uint256, b: uint256, shouldRevert: bool):
    self.c = a * b
    assert not shouldRevert

@external
@view
def get() -> uint256:
    return self.c

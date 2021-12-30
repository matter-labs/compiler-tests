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
#!     "expected": {
#!         "return_data": [
#!             "64561742855845010733841003574689413045507133876990525944586716276079137390592"
#!         ],
#!         "exception": true
#!     }
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

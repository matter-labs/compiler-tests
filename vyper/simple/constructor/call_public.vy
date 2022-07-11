#! { "ignore": true, "cases": [ {
#!     "name": "success",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "5", "42"
#!             ],
#!             "expected": [
#!                 "*"
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
#! } ] }
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

x: uint256
y: uint256

@internal
def set(b: uint256):
    self.y = b

@external
def __init__(a: uint256, b: uint256):
    self.x = a
    self.set(b)

@external
@view
def get() -> uint256:
    return self.y

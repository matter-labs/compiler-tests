#! { "ignore": true, "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "caller": "0x0000000000000000000000000000000000000099",
#!             "calldata": [
#!                 "25", "42"
#!             ]
#!         },
#!         {
#!             "entry": "a",
#!             "calldata": [],
#!             "expected": [ "25" ]
#!         },
#!         {
#!             "entry": "b",
#!             "calldata": [],
#!             "expected": [ "0x99" ]
#!         },
#!         {
#!             "entry": "c",
#!             "calldata": [],
#!             "expected": [ "42" ]
#!         }
#!     ],
#!     "expected": [ "42" ]
#! } ] }

a: immutable(uint256)
b: immutable(address)
c: immutable(uint8)

@external
def __init__(x: uint256, y: uint8):
    a = x
    b = msg.sender
    c = y

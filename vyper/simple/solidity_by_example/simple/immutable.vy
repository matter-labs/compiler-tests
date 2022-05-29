#! { "cases": [ {
#!     "name": "address",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "9823"
#!             ],
#!             "expected": [
#!                 "*"
#!             ]
#!         }, {
#!             "entry": "MY_ADDRESS",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xdeadbeef01000000000000000000000000000000"
#!     ]
#! }, {
#!     "name": "uint",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "555555"
#!             ],
#!             "expected": [
#!                 "*"
#!             ]
#!         }, {
#!             "entry": "MY_UINT",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "555555"
#!     ]
#! } ] }

# coding convention to uppercase constant variables
MY_ADDRESS: immutable(address)
MY_UINT: immutable(uint256)

@external
def __init__(_myUint: uint256):
    MY_ADDRESS = msg.sender
    MY_UINT = _myUint

@external
def MY_ADDRESS() -> address:
    return MY_ADDRESS

@external
def MY_UINT() -> uint256:
    return MY_UINT

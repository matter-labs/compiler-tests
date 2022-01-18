#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "set",
#!             "calldata": [
#!                 "7823982309234984387823489290492314"
#!             ]
#!         }, {
#!             "entry": "num",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "7823982309234984387823489290492314"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "set",
#!             "calldata": [
#!                 "34342312412341234"
#!             ]
#!         }, {
#!             "entry": "set",
#!             "calldata": [
#!                 "-82349283489238"
#!             ]
#!         }, {
#!             "entry": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-82349283489238"
#!     ]
#! } ] }

# State variable to store a number
num: public(uint256)

# You need to send a transaction to write to a state variable.
@external
def set(_num: uint256):
    self.num = _num

# You can read from a state variable without sending a transaction.
@external
@view
def get() -> uint256:
    return self.num

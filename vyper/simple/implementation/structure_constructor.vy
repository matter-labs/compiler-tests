#! { "cases": [ {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "64"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "64"
#!     ]
#! }, {
#!     "name": "third",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "65535"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "65535"
#!     ]
#! } ] }

struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data({a: a})

@external
def main(witness: uint256) -> uint256:
    return self._new(witness).a


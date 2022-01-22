#! { "cases": [ {
#!     "name": "by_zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42",
#!                 "25",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "ordinar",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42",
#!                 "25",
#!                 "24"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "19"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
#!     ]
#! } ] }

@external
@pure
def main(x: uint256, y: uint256, m: uint256) -> uint256:
    return uint256_addmod(x, y, m)
#! { "cases": [ {
#!     "name": "zero_zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "21"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "63"
#!     ]
#! }, {
#!     "name": "max_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "115792089237316195423570985008687907853269984665640564039457584007913129639935", "115792089237316195423570985008687907853269984665640564039457584007913129639935"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
@pure
def main(a: uint256, b: uint256) -> uint256:
    return bitwise_xor(a, b)

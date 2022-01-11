#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001100000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(witness: uint256) -> uint256:
    return witness - 1

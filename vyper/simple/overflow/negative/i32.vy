#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-2147483648"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(witness: int32) -> int32:
    return witness - 1

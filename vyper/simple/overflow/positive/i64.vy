#! { "ignore": true, "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "9223372036854775807"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

@external
@pure
def main(witness: int64) -> int64:
    return witness + 1

#! { "ignore": true, "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "32767"
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
def main(witness: int16) -> int16:
    return witness + 1

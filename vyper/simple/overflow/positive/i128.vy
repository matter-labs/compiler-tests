#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727"
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
def main(witness: int128) -> int128:
    return witness + 1

#! { "cases": [ {
#!     "name": "_default",
#!     "input": [
#!         {
#!             "entry": "_default",
#!             "calldata": [
#!                 "512"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1024"
#!     ]
#! } ] }

@external
@pure
def _default(_value: uint256) -> uint256:
    return _value * 2

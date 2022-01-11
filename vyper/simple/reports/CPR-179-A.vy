#! { "cases": [ {
#!     "name": "entry",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!                 "31", "0", "0", "0", "0", "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

struct Str1:
    a: uint256

@external
@pure
def entry(param: uint8, p3: uint256, p4: uint256, p5: uint256, p6: uint256, p7: uint256, p8: Str1) -> uint256:
    if param == 31:
        return p8.a
    else:
        return 1

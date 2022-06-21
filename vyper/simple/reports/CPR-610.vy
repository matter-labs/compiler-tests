#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "get",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!       "0"
#!     ]
#! } ] }

interface Self:
    def table(arg1: uint8) -> uint8: nonpayable

table: public(HashMap[uint8, uint8])

@external
def get() -> uint8:
    return Self(self).table(0)

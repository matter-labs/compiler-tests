#! { "cases": [ {
#!     "name": "test",
#!     "input": [
#!         {
#!             "entry": "verify",
#!             "calldata": [
#!                 "0x20",
#!                 "32",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

@external
def verify(sig: Bytes[32]) -> bytes32:
    return extract32(sig, 0)

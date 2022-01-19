#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "168", "4"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

struct Inner:
    value: uint8

struct Data:
    inner: Inner

@external
@pure
def main(data: Data, divider: uint8) -> Data:
    data.inner.value /= divider
    return data

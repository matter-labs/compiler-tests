#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "constructor": true,
#!             "calldata": [
#!                 "0x03",
#!                 "0x05",
#!                 "0x02"
#!             ]
#!         },
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "12"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

field_1: immutable(uint8)
field_2: immutable(uint8)
field_3: immutable(uint8)

@external
def __init__(a: uint8, b: uint8, c: uint8):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return witness + field_1 * field_2 * field_3

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "12"
#!             ],
#!             "storage": { ".address": [
#!                 "0x03",
#!                 "0x05",
#!                 "0x02"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

field_1: uint8
field_2: uint8
field_3: uint8

@external
def main(witness: uint8) -> uint8:
    return witness + self.field_1 * self.field_2 * self.field_3

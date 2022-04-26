#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "16"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "0x03",
#!                 "0x05",
#!                 "0x02"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "81"
#!     ]
#! } ] }

field_1: uint8
field_2: uint8
field_3: uint8

@external
def main(witness: uint8) -> uint8:
    return 19 * 3 - 8 / self.field_1 + (witness / (self.field_2 - 3) + 5) * (8 / self.field_3 / 2)

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "0x050a0f14"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! } ] }

data: uint8[4]

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i in range(0, 4):
        sum += self.data[i]
    return sum

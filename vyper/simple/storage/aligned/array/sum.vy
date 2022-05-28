#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": { "test.address": [
#!                 "20", "15", "10", "5"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! } ] }

data: uint256[4]

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i in range(0, 4):
        sum += convert(self.data[i], uint8)
    return sum

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "0x0005000a000f0014"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "15000"
#!     ]
#! } ] }

data: uint8[4]

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i in range(0, 4):
        product *= convert(self.data[i], uint256)
    return product

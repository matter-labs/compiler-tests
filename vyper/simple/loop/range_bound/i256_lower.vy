#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! } ] }

@external
@pure
def main() -> uint256:
    sum: uint256 = 0
    for i in range(-57896044618658097711785492504343953926634992332820282019728792003956564819968, -57896044618658097711785492504343953926634992332820282019728792003956564819958):
        sum += 1
    return sum

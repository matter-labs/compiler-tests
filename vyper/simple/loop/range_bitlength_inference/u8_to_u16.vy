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
#!         "2545"
#!     ]
#! } ] }

@external
@pure
def main() -> uint16:
    sum: uint16 = 0
    for i in range(250, 260):
        sum += i
    return sum

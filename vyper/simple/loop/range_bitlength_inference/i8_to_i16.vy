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
#!         "-128"
#!     ]
#! } ] }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-128, 128):
        sum += i
    return sum

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
#!         "-200"
#!     ]
#! } ] }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-200, 200):
        sum += i
    return sum

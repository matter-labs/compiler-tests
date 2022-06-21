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
#!         "-10"
#!     ]
#! } ] }

@external
@pure
def main() -> int8:
    sum: int8 = 0
    for i in range(-10, 10):
        sum += i
    return sum

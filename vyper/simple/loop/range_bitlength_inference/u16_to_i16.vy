#! { "ignore": true, "cases": [ {
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
# Ignored, https://linear.app/matterlabs/issue/CPR-722/vyper-problems

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-200, 200):
        sum += i
    return sum

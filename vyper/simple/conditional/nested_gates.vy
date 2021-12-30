#! { "cases": [ {
#!     "name": "one",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "two",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! }, {
#!     "name": "three",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "four",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! } ] }

@external
@pure
def main(gates: bool[3]) -> uint8:
    if gates[0]:
        return 1
    elif gates[1]:
        if gates[2]:
            return 2
        else:
            return 3
    else:
        return 4

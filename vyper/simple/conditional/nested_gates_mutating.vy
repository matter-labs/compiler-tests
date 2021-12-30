#! { "cases": [ {
#!     "name": "one",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "0", "0", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "25"
#!     ]
#! }, {
#!     "name": "two",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "1", "1", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "50"
#!     ]
#! }, {
#!     "name": "three",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "1", "0", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "75"
#!     ]
#! }, {
#!     "name": "four",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0", "0", "5"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "100"
#!     ]
#! } ] }

@external
@pure
def main(gates: bool[3], _mutated: uint8) -> uint8:
    mutated: uint8 = _mutated
    if gates[0]:
        mutated *= 5
    elif gates[1]:
        if gates[2]:
            mutated *= 10
        else:
            mutated *= 15
    else:
        mutated *= 20
    return mutated

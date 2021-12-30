#! { "cases": [ {
#!     "name": "element1",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4",
#!                 "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "element2",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4",
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! }, {
#!     "name": "element3",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4",
#!                 "2"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "element4",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1", "2", "3", "4",
#!                 "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! } ] }

SIZE: constant(uint8) = 4

@external
@pure
def main(array: uint8[SIZE], index: uint8) -> uint8:
    return array[index]

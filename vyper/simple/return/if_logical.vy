#! { "cases": [ {
#!     "name": "entry1",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! }, {
#!     "name": "false_true",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!                 "0", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! }, {
#!     "name": "true_false",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!                 "1", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "8"
#!     ]
#! }, {
#!     "name": "true_true",
#!     "input": [
#!         {
#!             "entry": "entry",
#!             "calldata": [
#!                 "1", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "4"
#!     ]
#! } ] }

@external
@pure
def entry(first: bool, second: bool) -> uint8:
    result: uint8 = 1

    if first or second:
        result *= 2

    if first != second:
        result *= 2

    if first and second:
        result *= 2

    if not first:
        result *= 2

    if not second:
        result *= 2

    return result

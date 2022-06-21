#! { "cases": [ {
#!     "name": "zero_zero",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! }, {
#!     "name": "ordinar_negative_first",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-126"
#!     ]
#! }, {
#!     "name": "ordinar_negative_second",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "-3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-126"
#!     ]
#! }, {
#!     "name": "ordinar_negative_both",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42", "-3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "126"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127", "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "127"
#!     ]
#! }, {
#!     "name": "overflow_negative",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-100", "2"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "100", "2"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_minimal",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "16", "8"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: int8, b: int8) -> int8:
    c: int8 = a
    c *= b
    return c

#! { "cases": [ {
#!     "name": "zero_by_zero",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001200000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "ordinar_by_zero",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001200000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "min_by_zero",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-128", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001200000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "max_by_zero",
#!     "modes": [ "0.8" ],
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127", "0"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001200000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "zero_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_divided",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_divider",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "zero_negative_both",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-42", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_positive",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "45", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_divided",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-45", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_divider",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "45", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "3"
#!     ]
#! }, {
#!     "name": "ordinar_remainder_negative_both",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-45", "-7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-3"
#!     ]
#! }, {
#!     "name": "ordinar_max_remainder",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "48", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "6"
#!     ]
#! }, {
#!     "name": "ordinar_next",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "49", "7"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "max_to_min",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127", "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "max_to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127", "64"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "63"
#!     ]
#! }, {
#!     "name": "min_to_max",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-128", "127"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-1"
#!     ]
#! }, {
#!     "name": "min_to_negative_ordinar",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "-127", "3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-1"
#!     ]
#! }, {
#!     "name": "max_to_negative_ordinar",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "127", "-3"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> int128:
    c: int128 = a
    c %= b
    return c

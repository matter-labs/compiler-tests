//! { "ignore": true,
//! "cases": [ {
//!     "name": "zero_by_zero",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "ordinar_by_zero",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "min_by_zero",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "max_by_zero",
//!     "ignore": true,
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "error"
//!     ]
//! }, {
//!     "name": "zero_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_negative_divided",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_negative_divider",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "zero_negative_both",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar_remainder_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "45", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3"
//!     ]
//! }, {
//!     "name": "ordinar_remainder_negative_divided",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-45", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! }, {
//!     "name": "ordinar_remainder_negative_divider",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "45", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3"
//!     ]
//! }, {
//!     "name": "ordinar_remainder_negative_both",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-45", "-7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "4"
//!     ]
//! }, {
//!     "name": "ordinar_max_remainder",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "48", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "6"
//!     ]
//! }, {
//!     "name": "ordinar_next",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "49", "7"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "min_to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max_to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "127", "64"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "63"
//!     ]
//! }, {
//!     "name": "min_to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-128", "63"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "61"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        return a % b;
    }
}
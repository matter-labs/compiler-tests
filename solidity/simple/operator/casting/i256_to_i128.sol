//! { "cases": [ {
//!     "name": "zero",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "170141183460469231731687303715884105727"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "170141183460469231731687303715884105727"
//!     ]
//! }, {
//!     "name": "overflow_negative_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-170141183460469231731687303715884105729"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "170141183460469231731687303715884105727"
//!     ]
//! }, {
//!     "name": "overflow_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-180141183460469231731687303715887105728"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "160141183460469231731687303715881105728"
//!     ]
//! }, {
//!     "name": "overflow_positive_minimal",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "170141183460469231731687303715884105728"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-170141183460469231731687303715884105728"
//!     ]
//! }, {
//!     "name": "overflow_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "190141183460469231731687303715884105728"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-150141183460469231731687303715884105728"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a) public pure returns(int128) {
        return int128(a);
    }
}

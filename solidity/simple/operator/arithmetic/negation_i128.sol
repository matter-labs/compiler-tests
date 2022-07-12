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
//!     "name": "ordinar_negative",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! }, {
//!     "name": "ordinar_positive",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-42"
//!     ]
//! }, {
//!     "name": "max_to_min",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "170141183460469231731687303715884105727"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "-170141183460469231731687303715884105727"
//!     ]
//! }, {
//!     "name": "almost_min_to_max",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "-170141183460469231731687303715884105727"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "170141183460469231731687303715884105727"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int128 a) public pure returns(int128) {
        return -a;
    }
}

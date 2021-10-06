//! { "cases": [ {
//!     "name": "conditionTrue",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0", "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1000256"
//!     ]
//! }, {
//!     "name": "conditionFalse",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "0", "0", "0", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    struct Data {
        bool a;
        uint8 b;
        uint256 c;
    }

    function main(Data memory witness, bool condition) public pure returns(uint64) {
        if (condition) {
            witness = Data(
                true,
                255,
                1000000
            );
        }

        if (witness.a) {
            return 1 + uint64(witness.b) + uint64(witness.c);
        } else {
            return 0 + uint64(witness.b) + uint64(witness.c);
        }
    }
}

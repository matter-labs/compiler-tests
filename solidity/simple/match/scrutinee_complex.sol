//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result;
        assembly {
            switch add(witness, mul(witness, witness))
            case 1 { result := 10 }
            case 2 { result := 20 }
            default {
                switch add(witness, mul(witness, witness))
                case 6 { result := 42 }
                default { result := 64 }
            }
        }
        return result;
    }
}

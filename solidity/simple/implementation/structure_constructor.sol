//! { "cases": [ {
//!     "name": "first",
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
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "64"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "64"
//!     ]
//! }, {
//!     "name": "third",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "65535"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "65535"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint256 a;
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function main(uint256 witness) public pure returns(uint256) {
        return _new(witness).a;
    }
}

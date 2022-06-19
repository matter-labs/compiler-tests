//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "test",
//!             "calldata": [
//!                 "0x111111111"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": []
//!             }
//!         ]
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    event Empty() anonymous;

    function test(uint256 number) public {
        emit Empty();
    }
}

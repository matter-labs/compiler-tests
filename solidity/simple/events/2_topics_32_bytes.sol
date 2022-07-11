//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "test",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "9876543210",
//!                     "9876543211"
//!                 ],
//!                 "values": [
//!                     "1234567890"
//!                 ]
//!             }
//!         ]
//!     }
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    event Event(uint256 indexed, uint256 indexed, uint256) anonymous;

    function test() public {
        emit Event(9876543210, 9876543211, 1234567890);
    }
}

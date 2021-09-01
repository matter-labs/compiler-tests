//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "test",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    event Trivial();
    event Simple(uint256 Number, address Account);
    event Indexed(uint256 indexed Number, address Account);

    function test(uint256 number) public {
        emit Trivial();
        emit Simple(number, address(0xdeadbeef));
        emit Indexed(number, address(0xc0ffee));
    }
}

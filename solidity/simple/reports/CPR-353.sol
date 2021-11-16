//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0000000000000000000000000000000000000000000000000000000000000020",
//!         "0x0000000000000000000000000000000000000000000000000000000000000004",
//!         "0xd845fc9200000000000000000000000000000000000000000000000000000000"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

error Error1();

contract Test {
    function main() public returns(bytes memory) {
        try this.f() {
            return "";
        } catch(bytes memory reason) {
            return reason;
        }
    }

    function f() external {
        revert Error1();
    }
}

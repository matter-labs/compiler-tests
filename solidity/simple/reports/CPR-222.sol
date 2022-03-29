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
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    mapping(uint => mapping(uint => uint)) twodim;
    
    function main() public returns (uint a) {
        twodim[2][3] = 3;
        a = twodim[3][2];
    }
}

//! { "cases": [ {
//!     "name": "require_short",
//!     "input": [
//!         {
//!             "entry": "require_short",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! }, {
//!     "name": "require_long",
//!     "input": [
//!         {
//!             "entry": "require_long",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! }, {
//!     "name": "new_error",
//!     "input": [
//!         {
//!             "entry": "new_error",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": "Runtime error"
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    error TestError(uint256 one, uint256 two, uint256 three, string data);

    function require_short() public pure {
        require(false, "short");
    }

    function require_long() public pure {
        require(false, "llonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextbonglonglongtextb");
    }

    function new_error() public pure {
        revert TestError({one: 1, two: 2, three: 1, data: "datadatadata"});
    }
}

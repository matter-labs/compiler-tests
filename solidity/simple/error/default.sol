//! {
//!   "modes": [
//!     "solc-0.8.4",
//!     "solc-0.8.5",
//!     "solc-0.8.6",
//!     "solc-0.8.7"
//!   ],
//!   "cases": [ {
//!     "name": "require_short",
//!     "input": [
//!         {
//!             "entry": "require_short",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x8C379A000000000000000000000000000000000000000000000000000000000",
//!         "0x20",
//!         "0x5",
//!         "0x73686F7274000000000000000000000000000000000000000000000000000000"
//!     ]
//! }, {
//!     "name": "require_long",
//!     "input": [
//!         {
//!             "entry": "require_long",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x8C379A000000000000000000000000000000000000000000000000000000000",
//!         "0x20",
//!         "0xDD",
//!         "0x6C6C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E677465",
//!         "0x7874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E67",
//!         "0x74657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F",
//!         "0x6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E67",
//!         "0x6C6F6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F",
//!         "0x6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E67",
//!         "0x6C6F6E676C6F6E6774657874626F6E676C6F6E676C6F6E677465787462000000"
//!     ]
//! }, {
//!     "name": "new_error",
//!     "input": [
//!         {
//!             "entry": "new_error",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x157BEA6000000000000000000000000000000000000000000000000000000000",
//!         "0x1",
//!         "0x2",
//!         "0x1",
//!         "0x80",
//!         "0xC",
//!         "0x6461746164617461646174610000000000000000000000000000000000000000"
//!     ]
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

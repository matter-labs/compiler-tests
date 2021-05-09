//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 42
//! }, {
//!     "entry": "second",
//!     "expected": 64
//! }, {
//!     "entry": "third",
//!     "expected": 65535
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    struct Data {
        uint256 a;
    }

    function first() public pure returns(uint64) {
        return uint64(main(42));
    }

    function second() public pure returns(uint64) {
        return uint64(main(64));
    }

    function third() public pure returns(uint64) {
        return uint64(main(65535));
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function main(uint256 witness) private pure returns(uint256) {
        return _new(witness).a;
    }
}

//! { "cases": [ {
//!     "entry": "false_false",
//!     "expected": 42
//! }, {
//!     "entry": "false_true",
//!     "expected": 42
//! }, {
//!     "entry": "true_false",
//!     "expected": 42
//! }, {
//!     "entry": "true_true",
//!     "expected": 25
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint256 data;

    function false_false() public returns(uint64) {
        return main(false, false, 25);
    }

    function false_true() public returns(uint64) {
        return main(false, true, 25);
    }

    function true_false() public returns(uint64) {
        return main(true, false, 25);
    }

    function true_true() public returns(uint64) {
        return main(true, true, 25);
    }

    function main(bool gate_1, bool gate_2, uint8 value) public returns(uint8) {
        data = 42;

        if (gate_1) {
            if (gate_2) {
                data = uint256(value);
            }
        }

        return uint8(data);
    }
}

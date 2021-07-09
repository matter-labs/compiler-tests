//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 21
//! }, {
//!     "entry": "two",
//!     "expected": 42
//! }, {
//!     "entry": "three",
//!     "expected": 84
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        return main(84, 21);
    }
    
    function two() public pure returns(uint64) {
        return main(42, 42);
    }
    
    function three() public pure returns(uint64) {
        return main(21, 84);
    }

    function main(uint16 _address, uint8 value) private pure returns(uint8 result) {
        uint16 pointer = (_address - 7) * 32;
        assembly {
            mstore(add(pointer, add(0x60, 0x80)), value)
            result := mload(add(pointer, sub(0x140, 0x60)))
        }
    }
}
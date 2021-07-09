//! { "cases": [ {
//!     "entry": "one",
//!     "expected": 6
//! }, {
//!     "entry": "two",
//!     "expected": 147
//! }, {
//!     "entry": "three",
//!     "expected": 198
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function one() public pure returns(uint64) {
        return main(1, 2, 3);
    }
    
    function two() public pure returns(uint64) {
        return main(42, 21, 84);
    }
    
    function three() public pure returns(uint64) {
        return main(99, 66, 33);
    }

    struct Data {
        uint32 a;
        uint32 b;
        uint32 c;
    }

    function main(uint32 a, uint32 b, uint32 c) private pure returns(uint32 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}

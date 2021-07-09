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
        return uint64(main(1, 2, 3));
    }
    
    function two() public pure returns(uint64) {
        return uint64(main(42, 21, 84));
    }
    
    function three() public pure returns(uint64) {
        return uint64(main(99, 66, 33));
    }

    struct Data {
        uint256 a;
        uint256 b;
        uint256 c;
    }

    function main(uint256 a, uint256 b, uint256 c) private pure returns(uint256 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}
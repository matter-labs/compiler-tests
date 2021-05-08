//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 131
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint248 constant CONST = 42;

    function entry() public pure returns(uint64) {
        return uint64(main(25));
    }

    function main(uint248 witness) private pure returns(uint248) {
        uint248 local = 64;

        return CONST + local + witness;
    }
}

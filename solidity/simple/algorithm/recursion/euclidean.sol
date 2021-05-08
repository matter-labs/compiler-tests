//! { "cases": [ {
//!     "entry": "gcd_15_6",
//!     "expected": 3
//! }, {
//!     "entry": "gcd_23_19",
//!     "expected": 1
//! }, {
//!     "entry": "gcd_76800_15435",
//!     "expected": 15
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function gcd_15_6() public pure returns(uint64) {
        return gcd(15, 6);
    }

    function gcd_23_19() public pure returns(uint64) {
        return gcd(23, 19);
    }

    function gcd_76800_15435() public pure returns(uint64) {
        return gcd(76800, 15435);
    }

    function gcd(uint64 a, uint64 b) private pure returns(uint64) {
        if (b == 0) {
            return a;
        }

        return gcd(b, a%b);
    }
}

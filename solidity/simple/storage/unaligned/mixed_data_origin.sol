//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": { "0000000000000000000000000000000000000000": [
//!                 "5", "7"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "148"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    uint248 constant SOMETHING = 42;
    uint248 constant SOMETHING_ELSE = 88;

    struct Data {
        uint248 c;
        uint248 d;
    }

    uint248 a;
    uint248 b;

    function main(uint248 value) public returns(uint248) {
        Data memory data = Data(10, 20);

        return inner(data, value, 42);
    }

    function inner(Data memory data, uint248 value, uint8 literal) public returns(uint248) {
        return ((a + data.c + b + data.d + value) * uint248(literal) * SOMETHING - SOMETHING_ELSE) / 1000;
    }
}

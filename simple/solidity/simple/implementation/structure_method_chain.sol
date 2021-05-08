//! { "cases": [ {
//!     "entry": "first",
//!     "expected": 1008
//! }, {
//!     "entry": "second",
//!     "expected": 1536
//! }, {
//!     "entry": "third",
//!     "expected": 24000000
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
        return uint64(main(1000000));
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function double(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 2);
    }

    function triple(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 3);
    }

    function quadruple(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 4);
    }

    function intoInner(Data memory data) private pure returns(uint256) {
        return data.a;
    }

    function main(uint256 witness) private pure returns(uint256) {
        return intoInner(
            quadruple(
                triple(
                    double(
                        _new(witness)
                    )
                )
            )
        );
    }
}

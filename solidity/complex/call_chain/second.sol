// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

import "./third.sol";

contract Second {
    function f(uint p) public pure returns(uint) {
        Third third = Third(address(0xdEaDBeef00000000000000000000000000000003));
        return third.f(p) * 2;
    }
}

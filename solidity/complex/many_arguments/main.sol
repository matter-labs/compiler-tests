// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./callable.sol";

contract Main {
    function main(uint p1, uint16 p2, uint24 p3, uint72 p4, uint136 p5, uint168 p6, uint248 p7, uint208 p8) public returns(uint) {
        Callable callable = Callable(address(0x0000121121241231235665444443320000000002));
        return callable.f(p1, p2, p3, p4, p5, p6, p7, p8) * 2;
    }
}

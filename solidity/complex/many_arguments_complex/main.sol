// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./callable.sol";

contract Main {
    function main(Callable.Str1[2] calldata p1, Callable.Str2 calldata p2, uint24 p3, Callable.E1[3] calldata p4, uint136[3] calldata p5) public returns(uint) {
        Callable callable = Callable(address(0xdeADbeEf00000000000000000000000000000002));
        return callable.f(p1, p2, p3, p4, p5) * 2;
    }
}

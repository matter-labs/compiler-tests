// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./callable.sol";

contract Main {
    function main(uint[1] calldata p1) public returns(uint) {
        Callable callable = Callable(address(0xdeADbeEf00000000000000000000000000000002));
        return callable.f(p1);
    }
}

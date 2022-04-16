// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

contract Callable {
    function f(uint a) public pure returns(uint) {
        return a * 2;
    }
}

contract Main {
    function main() public returns(uint) {
        Callable callable = Callable(address(0xdeADbeEf00000000000000000000000000000002));
        return callable.f(5);
    }
}

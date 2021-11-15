// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Callable {
    function f(uint a) public pure returns(uint) {
        return a * 2;
    }
}

contract Main {
    function main() public returns(uint) {
        Callable callable = Callable(address(0x0000000000001231235665444443320000000002));
        return callable.f(5);
    }
}
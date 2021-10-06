// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./callable.sol";

contract Main {
    function main(uint[1] calldata p1) public returns(uint) {
        Callable callable = Callable(address(0x0000000000000000000000000000000000000002));
        return callable.f(p1);
    }
}

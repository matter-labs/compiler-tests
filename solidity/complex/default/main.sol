// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./callable.sol";

contract Main {
    function main() public returns(uint) {
        Callable callable = Callable(address(0xdeADbeEf00000000000000000000000000000002));
        return callable.f(5);
    }
}

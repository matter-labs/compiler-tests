// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./callable.sol";

contract Main {
    function main() public returns(uint) {
        Callable callable = Callable(address(0xdeADbeEf00000000000000000000000000000002));
        return callable.f(5);
    }
}

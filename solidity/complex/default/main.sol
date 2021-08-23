// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./callable.sol";

contract Main {
    function main() public returns(uint) {
        Callable callable = Callable(address(0x0000000000001231235665444443320000000002));
        return callable.f(5);
    }
}

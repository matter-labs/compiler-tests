// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./icallable.sol";

contract Main {
    function main() public returns(uint) {
        return ICallable(address(0x0000000000001231235665444443320000000002)).f(5, false);
    }
}

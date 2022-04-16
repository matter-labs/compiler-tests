// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./icallable.sol";

contract Main {
    function main() public returns(uint) {
        return ICallable(address(0xdeADbeEf00000000000000000000000000000002)).f(5, false);
    }
}

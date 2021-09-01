// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./second.sol";

contract First {
    function f(uint p) public returns(uint) {
        Second second = Second(address(0x0000000000000000000000000000000000000002));
        return second.f(p);
    }
}

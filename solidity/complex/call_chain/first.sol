// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./second.sol";

contract First {
    function f(uint p) public returns(uint) {
        Second second = Second(address(0xdeADbeEf00000000000000000000000000000002));
        return second.f(p);
    }
}

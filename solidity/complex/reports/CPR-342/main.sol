// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

library L {
    function f() public {
    }
}

contract C {
    function f() public returns (uint, uint, uint, uint, uint, uint) {
        L.f(); // if remove function call or move function to contract C - it will work
        return (0, 0, 0, 0, 0, 0); // if remove one 0 it will return exception
    }
}
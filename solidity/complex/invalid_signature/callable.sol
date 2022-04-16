// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

contract Callable {
    function f(uint a) public pure returns(uint) {
        return a * 2;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Callable {
    function f(uint a) public pure returns(uint) {
        return a * 2;
    }
}

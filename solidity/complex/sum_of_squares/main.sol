// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./square.sol";

contract Main {
    function main(uint n) public returns(uint) {
        Square square = Square(address(0xdeADbeEf00000000000000000000000000000002));
        uint result = 0;
        for (uint i = 1; i <= n; i++) {
            result += square.square(i);
        }
        return result;
    }
}

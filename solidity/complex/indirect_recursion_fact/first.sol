// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./second.sol";

contract First {
    function fact(uint n) public returns(uint) {
        if (n == 0) {
            return 1;
        }
        Second second = Second(address(0xdeADbeEf00000000000000000000000000000002));
        return second.fact(n - 1) * n;
    }
}

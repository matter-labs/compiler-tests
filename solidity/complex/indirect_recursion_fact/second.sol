// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

import "./first.sol";

contract Second {
    function fact(uint n) public returns(uint) {
        if (n == 0) {
            return 1;
        }
        First first = First(address(0xdEADbeEF00000000000000000000000000000001));
        return first.fact(n - 1) * n;
    }
}

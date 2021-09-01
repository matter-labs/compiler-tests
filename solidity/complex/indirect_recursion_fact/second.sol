// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./first.sol";

contract Second {
    function fact(uint n) public returns(uint) {
        if (n == 0) {
            return 1;
        }
        First first = First(address(0x0000000000000000000000000000000000000001));
        return first.fact(n - 1) * n;
    }
}

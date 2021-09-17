// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

error Error1();

contract Callable {
    function throwError(uint reason) private {
        if (reason == 1) {
            assert(false);
        } else if (reason == 2) {
            revert("error");
        } else if (reason == 3) {
            revert Error1();
        }
    }

    constructor(uint reason) {
        throwError(reason);
    }

    function f(uint reason) public {
        throwError(reason);
    }
}

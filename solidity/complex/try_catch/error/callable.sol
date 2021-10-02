// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Callable {
    function throwError(uint reason) private {
        if (reason == 1) {
            revert();
        } else if (reason == 2) {
            revert("error1");
        } else if (reason == 3) {
            require(false);
        } else if (reason == 4) {
            require(false, "error2");
        } else if (reason == 5) {
            Callable callable = Callable(0x0000000000000000000000000000000000000003);
            callable.f(reason);
        }
    }

    constructor(uint reason) {
        throwError(reason);
    }

    function f(uint reason) public {
        throwError(reason);
    }
}
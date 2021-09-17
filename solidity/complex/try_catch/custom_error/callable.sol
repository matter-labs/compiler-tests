// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

error Error1();

error Error2(uint256 a, string b);

contract Callable {
    function throwError(uint reason) private {
        if (reason == 1) {
            revert Error1();
        } else if (reason == 2) {
            revert Error2(1, "error2");
        }
    }

    constructor(uint reason) {
        throwError(reason);
    }

    function f(uint reason) public {
        throwError(reason);
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface ICallable {
    function f(uint a, bool x) external pure returns(uint);
}

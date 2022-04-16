// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

interface ICallable {
    function f(uint a, bool x) external pure returns(uint);
}

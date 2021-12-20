// SPDX-License-Identifier: MIT

pragma solidity >=0.8.1;

contract C {
    uint256 x;

    function f() public returns (uint256) {
        x = 3;
        return 1;
    }
}

interface CView {
    function f() external view returns (uint256);
}

contract D {
    function fview() public returns (uint256) {
        return (CView(address(new C()))).f();
    }
}
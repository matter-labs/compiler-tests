// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

import "./C.sol";

contract B {
    function main(address c) external {
        (bool success, bytes memory result) = c.staticcall(abi.encodePacked(C.main.selector));
        if (!success) {
            assembly { revert(0, 0) }
        }
    }
}

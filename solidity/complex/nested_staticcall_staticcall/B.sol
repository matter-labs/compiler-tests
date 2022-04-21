// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

import "./C.sol";

contract B {
    function main() external {
        (bool success, bytes memory result) = address(0xdEaDBeef00000000000000000000000000000003).staticcall(msg.data);
        if (!success) {
            assembly { revert(0, 0) }
        }
    }
}

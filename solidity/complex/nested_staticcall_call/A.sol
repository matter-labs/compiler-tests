// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./B.sol";

contract A {
    function main() external {
        (bool success, bytes memory result) = address(0xdeADbeEf00000000000000000000000000000002).staticcall(msg.data);
        if (!success) {
            assembly { revert(0, 0) }
        }
    }
}

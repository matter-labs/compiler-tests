// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract C {
    function main() external returns (address) {
        return msg.sender;
    }
}

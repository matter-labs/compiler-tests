// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

contract C {
    function main() external returns (address) {
        return msg.sender;
    }
}

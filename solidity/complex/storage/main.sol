// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./storage.sol";

contract Main {
    function main(uint key, uint value) public returns(uint) {
        Storage _storage = Storage(address(0x0000000000000000000000000000000000000002));
        _storage.set(key, value);
        return _storage.get(key);
    }
}
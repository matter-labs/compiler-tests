// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./storage.sol";

contract Main {
    function main(uint value) public returns(uint) {
        address storage_address = address(0x0000000000000000000000000000000000000002);
        storage_address.call(abi.encodeWithSignature("set(uint)", value));
        Storage _storage = Storage(storage_address);
        return _storage.get();
    }
}

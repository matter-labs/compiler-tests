// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./storage.sol";

contract Main {
    function main(uint value) public returns(uint) {
        address storage_address = address(0xdeADbeEf00000000000000000000000000000002);
        storage_address.call(abi.encodeWithSignature("set(uint256)", value));
        Storage _storage = Storage(storage_address);
        return _storage.get() * 2;
    }
}

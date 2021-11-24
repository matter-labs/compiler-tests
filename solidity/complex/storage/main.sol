// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./storage.sol";

contract Main {
    uint initial;

    constructor(uint _initial) {
        initial = _initial;
    }

    function main(uint key, uint value) public returns(uint) {
        Storage _storage = Storage(address(0xdeADbeEf00000000000000000000000000000002));
        _storage.set(key, value);
        return _storage.get(key) + initial;
    }
}

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Storage {
    mapping(uint => uint) s;

    function set(uint key, uint value) public {
        s[key] = value;
    }

    function get(uint key) public view returns(uint) {
        return s[key];
    }
}

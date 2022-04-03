// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

contract Storage {
    uint value;

    function set(uint _value) public {
        value = _value;
    }

    function get() public view returns(uint) {
        return value;
    }
}

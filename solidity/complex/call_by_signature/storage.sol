// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Storage {
    uint value;

    function set(uint _value) public {
        value = _value;
    }

    function get() public view returns(uint) {
        return value;
    }
}

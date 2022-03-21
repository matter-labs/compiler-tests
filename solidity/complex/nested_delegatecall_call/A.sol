// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./B.sol";

contract A {
    function main() external returns (address) {
        (bool success, bytes memory return_data) = address(0xdeADbeEf00000000000000000000000000000002).delegatecall(msg.data);
        address result = abi.decode(return_data, (address));
        return result;
    }
}

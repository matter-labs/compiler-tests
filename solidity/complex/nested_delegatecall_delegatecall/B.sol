// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

import "./C.sol";

contract B {
    function main() external returns (address) {
        (bool success, bytes memory return_data) = address(0xdEaDBeef00000000000000000000000000000003).delegatecall(msg.data);
        address result = abi.decode(return_data, (address));
        return result;
    }
}

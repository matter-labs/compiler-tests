// SPDX-License-Identifier: MIT

pragma solidity >=0.6.9;

import "./C.sol";

contract B {
    function main() external returns (address) {
        return C(0xdEaDBeef00000000000000000000000000000003).main();
    }
}

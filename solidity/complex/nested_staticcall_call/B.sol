// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./C.sol";

contract B {
    function main() external {
        C(0xdEaDBeef00000000000000000000000000000003).main();
    }
}

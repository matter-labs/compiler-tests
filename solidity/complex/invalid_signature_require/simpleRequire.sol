// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract SimpleRequire {
    function require_short() public pure {
        require(false, "short");
    }

    function wrong_number_of_params(uint32 one, uint32 two) public pure returns(uint){
        return one + two;
    }
}

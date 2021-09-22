pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT OR Apache-2.0

interface RequireInterface {
    function require_short() external view;
    
    function wrong_number_of_params(uint32 one, uint32 two, bytes memory three) external view returns(uint);
}

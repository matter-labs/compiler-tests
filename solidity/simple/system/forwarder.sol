//! { "cases": [] }

// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity >=0.8.0;

contract Test {
    address immutable _target;

    constructor(address target) {
        _target = target;
    }

    fallback() external {
        address target = _target;

        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(0, target, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())

            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}
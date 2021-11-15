//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0000000000000000000000000000000000000000000000000000000000000020",
//!         "0x0000000000000000000000000000000000000000000000000000000000000020",
//!         "0xd845fc9200000000000000000000000000000000000000000000000000000000"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

error Error1();

contract Test {
    function main() public returns(bytes memory) {
//        (bool success, bytes memory result) = address(this).call(abi.encodeWithSignature("f()"));
//        return result;
// Also, the same result can be reproduced using the code above.
        try this.f() {
            return "";
        } catch(bytes memory reason) {
            return reason;
        }
    }

    function f() external {
        if (true) {
            revert Error1();
        }
        // if remove if condition(just `revert Error1();` as function body) -  it will crash only on M1 and M2 (not on M3)
    }
}

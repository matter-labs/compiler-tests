//! { "cases": [ {
//!     "name": "ok",
//!     "input": [
//!         {
//!             "entry": "deposit",
//!             "calldata": [
//!                 "20"
//!             ]
//!         },
//!         {
//!             "entry": "withdraw",
//!             "calldata": [
//!                 "10"
//!             ]
//!         },
//!         {
//!             "entry": "balance",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! }, {
//!     "name": "MAX_UINT",
//!     "input": [
//!         {
//!             "entry": "MAX_UINT",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!     ]
//! }, {
//!     "name": "overflow",
//!     "input": [
//!         {
//!             "entry": "deposit",
//!             "calldata": [
//!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!             ]
//!         },
//!         {
//!             "entry": "deposit",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! }, {
//!     "name": "underflow",
//!     "input": [
//!         {
//!             "entry": "deposit",
//!             "calldata": [
//!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
//!             ]
//!         },
//!         {
//!             "entry": "withdraw",
//!             "calldata": [
//!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x00000009556e646572666c6f7700000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Test {
    uint public balance;
    uint public constant MAX_UINT = 2**256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}

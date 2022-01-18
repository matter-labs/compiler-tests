#! { "cases": [ {
#!     "name": "ok",
#!     "input": [
#!         {
#!             "entry": "deposit",
#!             "calldata": [
#!                 "20"
#!             ]
#!         },
#!         {
#!             "entry": "withdraw",
#!             "calldata": [
#!                 "10"
#!             ]
#!         },
#!         {
#!             "entry": "balance",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "MAX_UINT",
#!     "input": [
#!         {
#!             "entry": "MAX_UINT",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "input": [
#!         {
#!             "entry": "deposit",
#!             "calldata": [
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         },
#!         {
#!             "entry": "deposit",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
#!             "0x0000001100000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! }, {
#!     "name": "underflow",
#!     "input": [
#!         {
#!             "entry": "deposit",
#!             "calldata": [
#!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
#!             ]
#!         },
#!         {
#!             "entry": "withdraw",
#!             "calldata": [
#!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x08c379a000000000000000000000000000000000000000000000000000000000",
#!             "0x0000002000000000000000000000000000000000000000000000000000000000",
#!             "0x00000009556e646572666c6f7700000000000000000000000000000000000000",
#!             "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! } ] }

balance_: public(uint256)
MAX_UINT: constant(uint256) = (2**255 - 1) * 2 + 1

@external
def deposit(_amount: uint256):
    oldBalance: uint256 = self.balance_
    newBalance: uint256 = self.balance_ + _amount

    # balance + _amount does not overflow if balance + _amount >= balance
    assert newBalance >= oldBalance, "Overflow"

    self.balance_ = newBalance

    assert self.balance_ >= oldBalance


@external
def withdraw(_amount: uint256):
    oldBalance: uint256 = self.balance_

    # balance - _amount does not underflow if balance >= _amount
    assert self.balance_ >= _amount, "Underflow"

    if self.balance_ < _amount:
        raise "Underflow"

    self.balance_ -= _amount

    assert self.balance_ <= oldBalance

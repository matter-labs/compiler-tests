#! { "cases": [ {
#!     "name": "oneWei",
#!     "input": [
#!         {
#!             "entry": "oneWei",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "isOneWei",
#!     "input": [
#!         {
#!             "entry": "isOneWei",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "oneEther",
#!     "input": [
#!         {
#!             "entry": "oneEther",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1000000000000000000"
#!     ]
#! }, {
#!     "name": "isOneEther",
#!     "input": [
#!         {
#!             "entry": "isOneEther",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

oneWei: public(uint256)
# 1 wei is equal to 1
isOneWei: public(bool)

oneEther: public(uint256)
# 1 ether is equal to 10^18 wei
isOneEther: public(bool)

@external
def __init__():
    self.oneWei = as_wei_value(1, "wei")
    self.isOneWei = as_wei_value(1, "wei") == 1
    self.oneEther = as_wei_value(1, "ether")
    self.isOneEther = as_wei_value(1, "ether") == convert(1e18, uint256)

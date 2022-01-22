#! { "ignore": true, "cases": [ {
#!     "name": "empty",
#!     "input": [
#!         {
#!             "entry": "getSelector",
#!             "calldata": [
#!                 "0x20",
#!                 "7",
#!                 "0x656d707479282900000000000000000000000000000000000000000000000000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xf2a75fe400000000000000000000000000000000000000000000000000000000"
#!     ]
#! }, {
#!     "name": "withParams",
#!     "input": [
#!         {
#!             "entry": "getSelector",
#!             "calldata": [
#!                 "0x20",
#!                 "53",
#!                 "0x77697468506172616d73282875696e743235365b325d2c62797465735b5d292c",
#!                 "0x737472696e672c75696e7431362c627974657332290000000000000000000000"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x6d3c5ac200000000000000000000000000000000000000000000000000000000"
#!     ]
#! } ] }

# "transfer(address,uint256)"
# 0xa9059cbb
# "transferFrom(address,address,uint256)"
# 0x23b872dd

@external
@pure
def getSelector(_func: String[100]) -> Bytes[4]:
    return slice(keccak256(_func), 0, 4)

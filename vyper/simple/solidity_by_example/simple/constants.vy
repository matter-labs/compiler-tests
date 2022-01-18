#! { "cases": [ {
#!     "name": "address",
#!     "input": [
#!         {
#!             "entry": "MY_ADDRESS",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc"
#!     ]
#! }, {
#!     "name": "uint",
#!     "input": [
#!         {
#!             "entry": "MY_UINT",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "123"
#!     ]
#! } ] }

MY_ADDRESS: constant(address) = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc
MY_UINT: constant(uint256) = 123

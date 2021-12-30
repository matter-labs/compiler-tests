#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "test",
#!             "calldata": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!         ],
#!         "events": [
#!             {
#!                 "topics": ["0x742ddab21c2fcfa13cae111a0cd043fb6c4375a90b69212466f265cea02c6dbc"],
#!                 "values": []
#!             },
#!             {
#!                 "topics": ["0x0a24cd290a359e539b7a80b016b98ec9c4f4cae46d04d989ed6ae93e8c52c209"],
#!                 "values": ["42", "3735928559"]
#!             },
#!             {
#!                 "topics": [
#!                     "0x37f8d1a8dd2ace10b09f68d60e4c035f242c1273a124f3e2a67bdb87df62b878",
#!                     "0x000000000000000000000000000000000000000000000000000000000000002a"
#!                 ],
#!                 "values": ["12648430"]
#!             }
#!         ]
#!     }
#! } ] }

event Trivial:
    pass

event Simple:
    _Number: uint256
    Account: address

event _Indexed:
    _Number: indexed(uint256)
    Account: address

@external
def test(_number: uint256):
    log Trivial()
    log Simple(_number, convert(convert(0xdeadbeef, uint256), address))
    log _Indexed(_number, convert(convert(0xc0ffee, uint256), address))

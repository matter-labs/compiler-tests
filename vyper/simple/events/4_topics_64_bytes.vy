#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!         ],
#!         "events": [
#!             {
#!                 "topics": [
#!                     "0xdf702711e99a2dce15329654492eec716f5cac32d6f18da183deeb0194395696",
#!                     "9876543211",
#!                     "9876543212",
#!                     "9876543213"
#!                 ],
#!                 "values": [
#!                     "1234567890",
#!                     "1234567891"
#!                 ]
#!             }
#!         ]
#!     }
#! } ] }

event Event:
    _: indexed(uint256)
    __: indexed(uint256)
    ___: indexed(uint256)
    ____: uint256
    _____: uint256

@external
def test():
    log Event(9876543211, 9876543212, 9876543213, 1234567890, 1234567891)

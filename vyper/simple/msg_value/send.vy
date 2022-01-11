#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0x42"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [
#!             "0x32C1D44B00000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!     }
#! } ] }

@external
def main(destination: address) -> uint256:
    send(destination, 42)

    return 1

#! { "cases": [ {
#!     "name": "without_argument",
#!     "input": [
#!         {
#!             "entry": "main()",
#!             "caller": "0xdeadbeef00000000000000000000000000000042",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xdeadbeef00000000000000000000000000000042"
#!     ]
#! }, {
#!     "name": "with_argument",
#!     "input": [
#!         {
#!             "entry": "main(address)",
#!             "calldata": [
#!                 "0xdeadbeef00000000000000000000000000000042"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0xdeadbeef00000000000000000000000000000042"
#!     ]
#! } ] }

@external
def main(
    a: address = msg.sender,
) -> address:
    return a
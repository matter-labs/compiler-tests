#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "caller": "0x0000000000000000000000000000000000000042",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0x0000000000000000000000000000000000000042"
#!     ]
#! } ] }

@external
def main(
    a: address = msg.sender,
) -> address:
    return a
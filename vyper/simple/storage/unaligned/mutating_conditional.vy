#! { "cases": [ {
#!     "name": "false_false",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0",
#!                 "0",
#!                 "25"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "42"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "false_true",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "0",
#!                 "1",
#!                 "25"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "42"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "true_false",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1",
#!                 "0",
#!                 "25"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "42"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "true_true",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "1",
#!                 "1",
#!                 "25"
#!             ],
#!             "storage": { "deadbeef00000000000000000000000000000000": [
#!                 "42"
#!             ] }
#!         }
#!     ],
#!     "expected": [
#!         "25"
#!     ]
#! } ] }

data: uint8

@external
def main(gate_1: bool, gate_2: bool, _value: uint8) -> uint8:
    self.data = 42

    if gate_1:
        if gate_2:
            self.data = _value

    return self.data

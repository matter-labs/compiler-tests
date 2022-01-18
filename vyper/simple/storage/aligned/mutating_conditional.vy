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
#!             "storage": [
#!                 "42"
#!             ]
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
#!             "storage": [
#!                 "42"
#!             ]
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
#!             "storage": [
#!                 "42"
#!             ]
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
#!             "storage": [
#!                 "42"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "25"
#!     ]
#! } ] }

data: uint256

@external
def main(gate_1: bool, gate_2: bool, _value: uint8) -> uint8:
    if gate_1:
        if gate_2:
            self.data = convert(_value, uint256)

    return convert(self.data, uint8)

#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "42"
#!             ],
#!             "storage": [
#!                 "5", "11"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1024"
#!     ]
#! } ] }

a: uint8
b: uint8

@internal
def double(_value: uint256) -> uint256:
    return _value * 2

@internal
def triple(_value: uint256) -> uint256:
    return 3 * _value

@internal
def quadruple(_value: uint256) -> uint256:
    return _value * 4

@external
def main(_value: uint256) -> uint256:
    return convert(self.a, uint256) + self.quadruple(self.triple(self.double(_value))) + convert(self.b, uint256)

#! { "cases": [ {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "first",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "second",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "42"
#!     ]
#! } ] }

@internal
@pure
def main(a: uint256, b: uint256, c: uint256) -> uint256:
    if c > 42:
        return a + b
    if c == 42:
        return a - b
    return a * b

@external
def first() -> uint256:
    return self.main(84, 2, 43) + self.main(23, 23, 42) - self.main(22, 2, 3)

@external
def second() -> uint256:
    return self.main(15, 10, 43) + self.main(30, 10, 42) - self.main(3, 1, 3)

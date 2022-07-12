#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "g",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!       "1"
#!     ]
#! } ] }

interface Self:
    def h() -> uint256: nonpayable
    def f() -> uint256: nonpayable

@external
def h() -> uint256:
    return 1

@external
def f() -> uint256:
    return Self(self).h()

@external
def g() -> uint256:
    return Self(self).f()

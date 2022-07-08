#! { "cases": [ {
#!     "name": "default",
#!     "input": [
#!         {
#!             "entry": "test",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!       "1"
#!     ]
#! } ] }

inner: DynArray[uint256, 1]

@external
def _init__():
    self.inner = [0]

@external
def test() -> uint256:
    return len(self.inner)

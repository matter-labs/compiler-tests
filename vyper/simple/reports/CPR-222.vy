#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! } ] }

twodim: HashMap[uint256, HashMap[uint256, uint256]]

@external
def main() -> uint256:
    self.twodim[2][3] = 3
    return self.twodim[3][2]

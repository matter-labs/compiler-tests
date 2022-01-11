#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "31"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! } ] }

@external
@pure
def main(param: uint8) -> uint256:
    cnt: uint256 = 0

    for j in [1, 2]:
        for h in range(0, 1):
            if param == 4:
                return 40
            cnt += 1

    return cnt

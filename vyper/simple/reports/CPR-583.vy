#! { "cases": [ {
#!     "name": "f",
#!     "input": [
#!         {
#!             "entry": "f",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }


KEY: uint8[2] # if replace the first or second value with 0, the test will work

@external
def __init__():
    self.KEY = [1, 1]

@external
@view
def f(data: uint8) -> bool:
    return self.KEY[1] == data

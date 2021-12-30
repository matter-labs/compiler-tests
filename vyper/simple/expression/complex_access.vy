#! { "cases": [ {
#!     "name": "main",
#!     "input": [
#!         {
#!             "entry": "main",
#!             "calldata": [
#!                 "25"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "33"
#!     ]
#! } ] }

struct Data:
    value: uint8

@internal
@pure
def tuple() -> (uint8, uint8, uint8, uint8):
    return (1, 2, 3, 4)

@external
def test(witness: uint8) -> uint8:
    array: uint8[2][2] = [[1, 2], [3, 4]]

    a: uint8 = 0
    b: uint8 = 0
    c: uint8 = 0
    d: uint8 = 0
    (a, b, c, d) = self.tuple()

    structure: Data = Data({value: witness})

    return array[1][1] + d + structure.value

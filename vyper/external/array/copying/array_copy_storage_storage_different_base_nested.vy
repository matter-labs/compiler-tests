data1: uint8[5][2]
data2: uint256[6][3]

@external
def test() -> (uint256, uint256):
    self.data2[0][0] = 11
    self.data2[1][0] = 22
    self.data2[2][0] = 33

    self.data1[0][0] = 0
    self.data1[0][1] = 1
    self.data1[0][2] = 2
    self.data1[0][3] = 3
    self.data1[0][4] = 4
    self.data1[1][0] = 3
    self.data2 = self.data1
    assert self.data1[0][1] == self.data2[0][1]
    return (self.data2.length, self.data2[0][4])
# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# test() -> 3, 4
# gas irOptimized: 190480
# gas legacy: 195353
# gas legacyOptimized: 192441

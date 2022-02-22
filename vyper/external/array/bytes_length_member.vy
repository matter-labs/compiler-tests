@external
def set() -> bool:
    self.data = slice(msg.data, 0, len(msg.data))
    return True

@external
def getLength() -> uint256:
    return len(self.data)

data: Bytes[100]
# ====
# compileViaYul: also
# ----
# getLength() -> 0
# set(): 1, 2 -> true
# gas irOptimized: 110433
# gas legacy: 110726
# gas legacyOptimized: 110567
# getLength() -> 68

@external
def set() -> bool:
    self.data1 = slice(msg.data, 0, len(msg.data))
    return True
@external
def reset() -> bool:
    self.data1 = self.data2
    return True
data1: Bytes[100]
data2: Bytes[100]
# ====
# compileViaYul: also
# ----
# set(): 1, 2, 3, 4, 5 -> true
# gas irOptimized: 177417
# gas legacy: 177656
# gas legacyOptimized: 177496
# storageEmpty -> 0
# reset() -> true
# storageEmpty -> 1

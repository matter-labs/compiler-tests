@external
def set() -> bool:
    self.data = slice(msg.data, 0, 4)
    return True

@external
def checkIfDataIsEmpty() -> bool:
    return len(self.data) == 0

@external
def sendMessage() -> (bool, Bytes[100]):
    emptyData: Bytes[100] = empty(Bytes[100])
    return (True, raw_call(self, emptyData, max_outsize = 100))
    
@external
def __default__():
    self.data = slice(msg.data, 0, 160)

data: Bytes[160]

# ====
# EVMVersion: >=byzantium
# compileToEwasm: false
# compileViaYul: also
# ----
# (): 1, 2, 3, 4, 5 ->
# gas irOptimized: 155178
# gas legacy: 155254
# gas legacyOptimized: 155217
# checkIfDataIsEmpty() -> false
# sendMessage() -> true, 0x40, 0
# checkIfDataIsEmpty() -> true

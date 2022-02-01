data: uint256[4]

@external
def set(index: uint256, _value: uint256) -> bool:
    self.data[index] = _value
    return True
    
@external
def get(index: uint256) -> uint256:
    return self.data[index]
    
@external
def length() -> uint256:
    return 4

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# length() -> 4
# set(uint256,uint256): 3, 4 -> true
# set(uint256,uint256): 4, 5 -> FAILURE, hex"4e487b71", 0x32
# set(uint256,uint256): 400, 5 -> FAILURE, hex"4e487b71", 0x32
# get(uint256): 3 -> 4
# get(uint256): 4 -> FAILURE, hex"4e487b71", 0x32
# get(uint256): 400 -> FAILURE, hex"4e487b71", 0x32
# length() -> 4
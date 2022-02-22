event Deposit:
    _from: indexed(address)
    _id: indexed(bytes32)
    _value: uint256

@external
def __init__():
    log Deposit(msg.sender, extract32(convert("abc", Bytes[3]), 0), 7)

# ====
# compileViaYul: also
# ----
# constructor()
# ~ emit Deposit(address,bytes32,uint256): #0x1212121212121212121212121212120000000012, #"abc", 0x07

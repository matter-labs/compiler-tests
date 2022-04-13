
x: public(immutable(uint256))

@external
def __init__():
    x = 1
    
# ====
# compileViaYul: also
# ----
# x() -> 1

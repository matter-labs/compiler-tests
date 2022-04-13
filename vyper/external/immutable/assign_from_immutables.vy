a: public(immutable(uint256))
b: public(immutable(uint256))
c: public(immutable(uint256))
d: public(immutable(uint256))

@external
def __init__():
    a = 1
    b = a
    c = b
    d = c
    
# ====
# compileViaYul: also
# ----
# a() -> 1
# b() -> 1
# c() -> 1
# d() -> 1

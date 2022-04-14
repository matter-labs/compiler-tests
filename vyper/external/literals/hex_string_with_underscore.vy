@external
@pure
def f() -> Bytes[100]:
    return convert(0x12_34_5678_9A, Bytes[100])

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 32, 5, left(0x123456789A)

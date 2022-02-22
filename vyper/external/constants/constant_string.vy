a: constant(Bytes[100]) = b"\x03\x01\x02"
b: constant(Bytes[100]) = 0x030102
c: constant(String[100]) = "hello"

@external
def f() -> Bytes[100]:
    return a

@external
def g() -> Bytes[100]:
    return b

@external
def h() -> Bytes[100]:
    return convert(c, Bytes[100])

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f() -> 0x20, 3, "\x03\x01\x02"
# g() -> 0x20, 3, "\x03\x01\x02"
# h() -> 0x20, 5, "hello"

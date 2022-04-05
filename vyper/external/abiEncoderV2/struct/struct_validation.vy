struct S:
    a: int16
    b: uint8
    c: bytes2
    
@external
@pure
def f(s: S) -> (uint256, uint256, uint256):
    return (convert(s.a, uint256), convert(s.b, uint256), convert(s.c, uint256))

# ====
# compileViaYul: also
# compileToEwasm: also
# ----
# f((int16,uint8,bytes2)): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff01, 0xff, "ab" -> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff01, 0xff, "ab"
# f((int16,uint8,bytes2)): 0xff010, 0xff, "ab" -> FAILURE
# f((int16,uint8,bytes2)): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff01, 0xff0002, "ab" -> FAILURE
# f((int16,uint8,bytes2)): 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff01, 0xff, "abcd" -> FAILURE

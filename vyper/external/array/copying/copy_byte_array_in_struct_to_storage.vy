struct S:
    x: uint8
    a: Bytes[100]
    y: uint8
    b: Bytes[100]

padding: uint256
data: S

@external
def f() -> (Bytes[100], Bytes[100]):
    x: S = empty(S)
    x.x = 7
    x.b = convert("1234567890123456789012345678901 1234567890123456789012345678901 123456789", Bytes[100])
    x.a = convert("abcdef", Bytes[100])
    x.y = 9
    self.data = x
    return (self.data.a, self.data.b)
@external
def g() -> (Bytes[100], Bytes[100]):
    x: S = empty(S)
    x.x = 7
    x.b = convert("12345678923456789", Bytes[100])
    x.a = convert("1234567890123456789012345678901 1234567890123456789012345678901 123456789", Bytes[100])
    x.y = 9
    self.data = x
    return (self.data.a, self.data.b)
@external
def h() -> (Bytes[100], Bytes[100]):
    x: S = empty(S)
    self.data = x
    return (self.data.a, self.data.b)
# ====
# compileViaYul: also
# ----
# f() -> 0x40, 0x80, 6, 0x6162636465660000000000000000000000000000000000000000000000000000, 0x49, 0x3132333435363738393031323334353637383930313233343536373839303120, 0x3132333435363738393031323334353637383930313233343536373839303120, 0x3132333435363738390000000000000000000000000000000000000000000000
# gas irOptimized: 179952
# gas legacy: 180694
# gas legacyOptimized: 180088
# g() -> 0x40, 0xc0, 0x49, 0x3132333435363738393031323334353637383930313233343536373839303120, 0x3132333435363738393031323334353637383930313233343536373839303120, 0x3132333435363738390000000000000000000000000000000000000000000000, 0x11, 0x3132333435363738393233343536373839000000000000000000000000000000
# gas irOptimized: 107332
# gas legacy: 107895
# gas legacyOptimized: 107254
# h() -> 0x40, 0x60, 0x00, 0x00
# storageEmpty -> 1
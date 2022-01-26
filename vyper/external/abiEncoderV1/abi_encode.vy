@external
def f0() -> Bytes[100]:
    return convert("", Bytes[100])

@external
def f1() -> Bytes[100]:
    tmp1: uint8 = 1
    tmp2: uint8 = 2
    return _abi_encode(tmp1, tmp2)

@external
def f2() -> Bytes[256]:
    x: String[100] = "abc"
    tmp1: uint8 = 1
    tmp2: uint8 = 2
    return _abi_encode(tmp1, x, tmp2)

@external
def f3() -> Bytes[256]:
    # test that memory is properly allocated
    x: String[100] = "abc"
    tmp1: uint8 = 1
    tmp2: uint8 = 2
    r: Bytes[256] = _abi_encode(tmp1, x, tmp2)
    y: Bytes[100] = convert("def", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "d"
    y = convert("eef", Bytes[100])
    assert convert(slice(y, 0, 1), String[1]) == "e"
    return r

@external
def f4() -> Bytes[192]:
    x: bytes32 = convert(convert("abcd", Bytes[4]), bytes32)
    return _abi_encode(convert(slice(x, 0, 2), bytes32))

# ====
# compileToEwasm: also
# compileViaYul: also
# ----
# f0() -> 0x20, 0x0
# f1() -> 0x20, 0x40, 0x1, 0x2
# f2() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f3() -> 0x20, 0xa0, 0x1, 0x60, 0x2, 0x3, "abc"
# f4() -> 0x20, 0x20, "ab"

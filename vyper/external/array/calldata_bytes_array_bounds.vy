struct bytes:
    inner: Bytes[100]

@external
def f(a: bytes[1], i: uint256) -> uint256:
    return convert(convert(slice(a[0].inner, i, 1), uint8), uint256)

# ====
# compileViaYul: also
# ----
# f((bytes)[1],uint256): 0x40, 0, 0x20, 0x20, 2, 0x6162000000000000000000000000000000000000000000000000000000000000 -> 0x61
# f((bytes)[1],uint256): 0x40, 1, 0x20, 0x20, 2, 0x6162000000000000000000000000000000000000000000000000000000000000 -> 0x62
# f((bytes)[1],uint256): 0x40, 2, 0x20, 0x20, 2, 0x6162000000000000000000000000000000000000000000000000000000000000 -> FAILURE

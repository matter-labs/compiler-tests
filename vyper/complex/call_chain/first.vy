import second as Second

@external
@pure
def f(p: uint256) -> uint256:
    second: address = 0xdeADbeEf00000000000000000000000000000002
    return Second(second).f(p)

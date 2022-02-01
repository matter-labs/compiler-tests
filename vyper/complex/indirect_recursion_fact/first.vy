import second as Second

@external
def fact(n: uint256) -> uint256:
    if n == 0:
        return 1
    second: address = 0xdeADbeEf00000000000000000000000000000002
    return Second(second).fact(n - 1) * n

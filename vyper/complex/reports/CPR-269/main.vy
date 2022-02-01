import callable as Callable

@external
def main(p1: uint256[1]) -> uint256:
    callable: address = 0xdeADbeEf00000000000000000000000000000002
    return Callable(callable).f(p1)

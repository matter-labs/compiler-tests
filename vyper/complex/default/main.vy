import callable as Callable

@external
def main() -> uint256:
    callable: address = 0xdeADbeEf00000000000000000000000000000002
    return Callable(callable).f(5)

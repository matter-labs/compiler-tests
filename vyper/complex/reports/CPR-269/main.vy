import callable as Callable

@external
def main(p1: uint256[1], callable: address) -> uint256:
    return Callable(callable).f(p1)

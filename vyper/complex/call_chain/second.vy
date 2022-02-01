import third as Third

@external
@pure
def f(p: uint256) -> uint256:
    third: address = 0xdEaDBeef00000000000000000000000000000003
    return Third(third).f(p) * 2

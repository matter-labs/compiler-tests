import third as Third

@external
def f(p: uint256) -> uint256:
    third: address = create_forwarder_to(0xdEaDBeef00000000000000000000000000000003, salt=convert(convert("third", Bytes[5]), bytes32))
    return Third(third).f(p) * 2

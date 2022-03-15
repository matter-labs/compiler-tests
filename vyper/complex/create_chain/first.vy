import second as Second

@external
def f(p: uint256) -> uint256:
    second: address = create_forwarder_to(0xdeADbeEf00000000000000000000000000000002)
    return Second(second).f(p)

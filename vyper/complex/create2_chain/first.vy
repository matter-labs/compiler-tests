import second as Second

@external
def f(p: uint256) -> uint256:
    second: address = create_forwarder_to(0xdeADbeEf00000000000000000000000000000002, salt=convert(convert("second", Bytes[6]), bytes32))
    return Second(second).f(p)

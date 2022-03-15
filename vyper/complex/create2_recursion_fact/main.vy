interface Self:
    def main(n: uint256) -> uint256: nonpayable

@external
def main(n: uint256) -> uint256:
    if n == 1:
        return 1

    forwarder: address = create_forwarder_to(0xdEADbeEF00000000000000000000000000000001, salt=convert(0, bytes32))

    return Self(forwarder).main(n - 1) * n

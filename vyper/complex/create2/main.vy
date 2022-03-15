import callable as Callable

@external
def main(salt: bytes32) -> uint256:
    implementation: address = 0xdeADbeEf00000000000000000000000000000002
    forwarder: address = create_forwarder_to(implementation, salt=salt)

    Callable(forwarder).set(10)
    return Callable(forwarder).get()

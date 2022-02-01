import icallable as ICallable

@external
def main() -> uint256:
    return ICallable(0xdeADbeEf00000000000000000000000000000002).f(5, False)

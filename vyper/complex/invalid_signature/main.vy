interface ICallable:
    def f(a: uint256, x: bool) -> uint256: pure

@external
def main() -> uint256:
    return ICallable(0xdeADbeEf00000000000000000000000000000002).f(5, False)

import first as First

@external
def fact(n: uint256) -> uint256:
    if n == 0:
        return 1
    first: address = 0xdEADbeEF00000000000000000000000000000001
    return First(first).fact(n - 1) * n

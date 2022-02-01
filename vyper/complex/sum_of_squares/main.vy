import square as Square

@external
def main(n: uint256) -> uint256:
    square: address = 0xdeADbeEf00000000000000000000000000000002
    result: uint256 = 0
    for i in range(1, 1000000):
        if not i <= n:
            break
        result += Square(square).square(i)
    return result

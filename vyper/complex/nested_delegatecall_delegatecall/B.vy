import C as C

@external
def main() -> address:
    output: Bytes[32] = raw_call(0xdEaDBeef00000000000000000000000000000003, slice(msg.data, 0, 4), max_outsize=32, is_delegate_call=True)
    return convert(convert(output, uint256), address)

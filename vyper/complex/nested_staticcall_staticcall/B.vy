import C as C

@external
def main():
    raw_call(0xdEaDBeef00000000000000000000000000000003, slice(msg.data, 0, 4), is_static_call=True)

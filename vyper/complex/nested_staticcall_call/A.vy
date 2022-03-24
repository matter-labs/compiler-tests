import B as B

@external
def main():
    raw_call(0xdeADbeEf00000000000000000000000000000002, slice(msg.data, 0, 4), is_static_call=True)

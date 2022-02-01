import storage as Storage

@external
def main(_value: uint256) -> uint256:
    storage_address: address = 0xdeADbeEf00000000000000000000000000000002
    raw_call(storage_address, _abi_encode(_value, method_id=method_id("set(uint256)")))
    return Storage(storage_address).get() * 2

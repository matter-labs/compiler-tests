import storage as Storage

initial: uint256

@external
def __init__(_initial: uint256):
    self.initial = _initial

@external
def main(key: uint256, _value: uint256) -> uint256:
    _storage: address = 0xdeADbeEf00000000000000000000000000000002
    Storage(_storage).set(key, _value)
    return Storage(_storage).get(key) + self.initial

a: Bytes[200]
b: Bytes[200]
@external
def f(_len: uint256) -> Bytes[200]:
    x: Bytes[200] = slice(0x000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7, 0, _len)
    self.a = x
    for i in range(200):
        if not i < _len:
            break
        assert slice(self.a, i, 1) == slice(x, i, 1)
    self.b = self.a
    for i in range(200):
        if not i < _len:
            break
        assert slice(self.b, i, 1) == slice(x, i, 1)
    return self.b

# ====
# compileViaYul: also
# ----
# f(uint256): 0 -> 0x20, 0x00
# f(uint256): 31 -> 0x20, 0x1f, 0x0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e00
# gas irOptimized: 121741
# gas legacy: 124364
# gas legacyOptimized: 119898
# f(uint256): 32 -> 0x20, 0x20, 1780731860627700044960722568376592200742329637303199754547598369979440671
# gas irOptimized: 130733
# gas legacy: 135431
# gas legacyOptimized: 130829
# f(uint256): 33 -> 0x20, 33, 1780731860627700044960722568376592200742329637303199754547598369979440671, 0x2000000000000000000000000000000000000000000000000000000000000000
# gas irOptimized: 137732
# gas legacy: 142238
# gas legacyOptimized: 137518
# f(uint256): 63 -> 0x20, 0x3f, 1780731860627700044960722568376592200742329637303199754547598369979440671, 14532552714582660066924456880521368950258152170031413196862950297402215316992
# gas irOptimized: 152352
# gas legacy: 160728
# gas legacyOptimized: 152168
# f(uint256): 12 -> 0x20, 0x0c, 0x0102030405060708090a0b0000000000000000000000000000000000000000
# gas legacy: 59345
# gas legacyOptimized: 57279
# f(uint256): 129 -> 0x20, 0x81, 1780731860627700044960722568376592200742329637303199754547598369979440671, 0x202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f, 29063324697304692433803953038474361308315562010425523193971352996434451193439, 0x606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f, -57896044618658097711785492504343953926634992332820282019728792003956564819968
# gas irOptimized: 406089
# gas legacy: 423017
# gas legacyOptimized: 406021

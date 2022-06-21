interface CView:
    def f() -> uint256: view

@external
def fview(c: address) -> uint256:
    return CView(c).f()

@external
@pure
def f(a: uint256, b: uint256)
    function f(uint a, uint b) public pure returns (uint x, uint y) {
        x = a;
        y = b;
    }
}
// ====
// compileToEwasm: also
// compileViaYul: also
// ----
// f(uint256,uint256): 5, 6 -> 5, 6

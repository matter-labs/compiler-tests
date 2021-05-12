//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 15000
//! } ] }

contract Test {
    struct Data {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
    }

    Data data;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint16 argument) public returns(uint16) {
        data.a = 20;
        data.b = 15;
        data.c = 10;
        data.d = 5;

        uint16 product = 1;
        product *= uint16(data.a);
        product *= uint16(data.b);
        product *= uint16(data.c);
        product *= uint16(data.d);
        return product;
    }
}

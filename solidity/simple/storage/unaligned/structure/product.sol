//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 15000
//! } ] }

contract Test {
    struct Data {
        uint16 a;
        uint16 b;
        uint16 c;
        uint16 d;
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
        product *= data.a;
        product *= data.b;
        product *= data.c;
        product *= data.d;
        return product;
    }
}

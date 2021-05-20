//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 50
//! } ] }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
    }

    Data data;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint8 argument) public returns(uint8) {
        data.a = 20;
        data.b = 15;
        data.c = 10;
        data.d = 5;

        uint8 sum = 0;
        sum += data.a;
        sum += data.b;
        sum += data.c;
        sum += data.d;
        return sum;
    }
}
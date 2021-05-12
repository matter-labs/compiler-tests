//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 15000
//! } ] }

contract Test {
    uint16[4] data;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint16 argument) public returns(uint16) {
        data[0] = 20;
        data[1] = 15;
        data[2] = 10;
        data[3] = 5;

        uint16 product = 1;
        for (uint8 i = 0; i < 4; i++) {
            product *= data[i];
        }
        return product;
    }
}

//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 126
//! } ] }

contract Test {
    uint8[4] data;

    uint8 constant TEST = 42;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint8 argument) public returns(uint8) {
        data[3] += argument;

        return argument + TEST + data[3];
    }
}

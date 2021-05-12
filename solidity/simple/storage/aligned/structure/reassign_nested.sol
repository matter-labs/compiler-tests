//! { "cases": [ {
//!     "entry": "entry",
//!     "expected": 126
//! } ] }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        Inner inner;
    }

    struct Inner {
        uint256 value;
    }

    Data data;

    function entry() public returns(uint64) {
        return uint64(main(42));
    }

    function main(uint8 argument) public returns(uint8) {
        data.inner.value += uint256(argument);

        return argument + TEST + uint8(data.inner.value);
    }
}

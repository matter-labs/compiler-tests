//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
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

    function main(uint8 argument) public returns(uint8) {
        data.inner.value = uint256(argument);

        return argument + TEST + uint8(data.inner.value);
    }
}

//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": [
//!                 "0x656463"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "226"
//!     ]
//! } ] }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        Inner inner;
    }

    struct Inner {
        uint8 value;
        uint8 next;
        uint8 last;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.inner.next += argument;

        return argument + TEST + data.inner.next;
    }
}

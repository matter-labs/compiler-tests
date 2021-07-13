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
        uint8 value;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.value = argument;

        return argument + TEST + data.value;
    }
}

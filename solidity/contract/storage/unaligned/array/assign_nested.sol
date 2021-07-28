//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": [
//!                 "1", "2", "3", "4",
//!                 "5", "6", "7", "8",
//!                 "9", "10", "11", "12",
//!                 "13", "14", "15", "16"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
//! } ] }

contract Test {
    uint8[4][4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3][3] = argument;

        return argument + TEST + data[3][3];
    }
}

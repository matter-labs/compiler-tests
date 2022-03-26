//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": { "0000000000000000000000000000000000000000": [
//!                 "1", "2", "3", "4"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "126"
//!     ]
//! } ] }

contract Test {
    uint256[4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3] = uint256(argument);

        return argument + TEST + uint8(data[3]);
    }
}

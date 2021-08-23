//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": [
//!                 "0x0005000a000f0014"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "15000"
//!     ]
//! } ] }

contract Test {
    uint16[4] data;

    function main(uint16 argument) public returns(uint16) {
        uint16 product = 1;
        for (uint8 i = 0; i < 4; i++) {
            product *= data[i];
        }
        return product;
    }
}

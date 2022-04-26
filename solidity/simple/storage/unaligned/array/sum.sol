//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!                 "42"
//!             ],
//!             "storage": { "deadbeef00000000000000000000000000000000": [
//!                 "0x050a0f14"
//!             ] }
//!         }
//!     ],
//!     "expected": [
//!         "50"
//!     ]
//! } ] }

contract Test {
    uint8[4] data;

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += data[i];
        }
        return sum;
    }
}

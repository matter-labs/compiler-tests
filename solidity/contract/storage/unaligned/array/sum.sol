//! { "cases": [ {
//!     "name": "main",
//!     "input": [
//!         {
//!             "entry": "main",
//!             "calldata": [
//!             ],
//!             "storage": [
//!                 "20", "15", "10", "5"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "50"
//!     ]
//! } ] }

contract Test {
    uint8[4] data;

    function main(uint8 argument) public returns(uint8) {
        data[0] = 20;
        data[1] = 15;
        data[2] = 10;
        data[3] = 5;

        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += data[i];
        }
        return sum;
    }
}

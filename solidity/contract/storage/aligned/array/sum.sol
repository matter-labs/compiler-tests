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
//!         "50"
//!     ]
//! } ] }

contract Test {
    uint256[4] data;

    function main(uint8 argument) public returns(uint8) {
        data[0] = 20;
        data[1] = 15;
        data[2] = 10;
        data[3] = 5;

        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += uint8(data[i]);
        }
        return sum;
    }
}

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
//!         "15000"
//!     ]
//! } ] }

contract Test {
    uint256[4] data;

    function main(uint16 argument) public returns(uint16) {
        data[0] = 20;
        data[1] = 15;
        data[2] = 10;
        data[3] = 5;

        uint16 product = 1;
        for (uint8 i = 0; i < 4; i++) {
            product *= uint16(data[i]);
        }
        return product;
    }
}

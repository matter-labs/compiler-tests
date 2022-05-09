//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "get",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!       "0"
//!     ]
//! } ] }

contract Test {
    mapping(uint8 => uint8) public table;
    function get() public returns (uint8) {
        return this.table(0);
    }
}

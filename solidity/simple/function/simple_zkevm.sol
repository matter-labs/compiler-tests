//! { "cases": [ {
//!     "name": "_default",
//!     "input": [
//!         {
//!             "entry": "_default",
//!             "calldata": [
//!                 "512"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1024"
//!     ]
//! } ] }

contract Test {
    function _default(uint248 value) public pure returns(uint248) {
        return value * 2;
    }
}

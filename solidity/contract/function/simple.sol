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
    function _default(uint256 value) public pure returns(uint256) {
        return value * 2;
    }
}
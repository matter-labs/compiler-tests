//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "g",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!       "1"
//!     ]
//! } ] }

contract Test {
    function h() external returns (uint256) {
        return 1;
    }

    function f() external returns (uint256) {
        return this.h();
    }

    function g() external returns (uint256) {
        return this.f();
    }
}

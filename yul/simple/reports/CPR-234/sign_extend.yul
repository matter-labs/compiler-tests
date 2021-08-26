//! { "cases": [ {
//!     "name": "positive",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "127"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "127"
//!     ]
//! }, {
//!     "name": "negative",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "255"
//!             ]
//!         }
//!     ],
//!     "expected": [ "-1" ]
//! } ] }

object "Test_222" {
    code {
        return(0, 0)
    }

    object "Test_222_deployed" {
        code {
            mstore(0, signextend(0, calldataload(4)))
            return(0, 32)
        }
    }
}

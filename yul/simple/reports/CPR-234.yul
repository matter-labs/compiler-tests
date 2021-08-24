//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "5", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [ "1" ]
//! } ] }

object "Test_222" {
    code {
        return(0, 0)
    }

    object "Test_222_deployed" {
        code {
            mstore(0, slt(calldataload(4), calldataload(36))
            return(0, 32)
        }
    }
}

//! { "cases": [ {
//!     "name": "10_failure",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "0", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                let result := staticcall(0, address(), 0, 0, 0, 0)
                mstore(0, result)
                return(0, 32)
            }
        }
    }
}

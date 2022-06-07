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
//!     "expected": {
//!         "return_data": [ "0" ],
//!         "exception": true
//!     }
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
                if result {
                    return(0, 32)
                }
                revert(0, 32)
            }
        }
    }
}

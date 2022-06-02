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
                let go_static := calldataload(32)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 64)
                    let result := staticcall(0, address(), 0, 32, 0, 32)
                    mstore(0, result)
                    return(0, 32)
                }
                sstore(0, 0)
                return(0, 0)
            }

        }
    }
}

//! { "ignore": true, "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
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
                let result1, result2 := ZKSYNC_NEAR_CALL_tuple2(0)
                mstore(0, result1)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_tuple2(abi_data) -> result1, result2 {
                result1 := 1
                result2 := 0
            }
        }
    }
}

//! { "cases": [ {
//!     "name": "zero",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "42"
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
                let result := ZKSYNC_NEAR_CALL_test(555, 12, 30)
                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg1, arg2) -> result
            {
                result := add(arg1, arg2)
            }
        }
    }
}
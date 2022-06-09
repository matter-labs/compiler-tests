//! { "cases": [ {
//!     "name": "failure",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "777", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0",
//!         "666"
//!     ]
//! }, {
//!     "name": "success",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "777", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "777",
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
                let arg := calldataload(0)

                let result := ZKSYNC_NEAR_CALL_test(555, arg)
                mstore(0, result)
                return(0, 64)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg) -> result {
                if calldataload(32) {
                    verbatim_i0_o0("00000000")
                }
                result := 777
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(32, 666)
            }
        }
    }
}

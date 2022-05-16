//! { "cases": [ {
//!     "name": "failure",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "11", "12"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "666"
//!     ]
//! }, {
//!     "name": "success",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "12", "12"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "777"
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
                let arg1 := calldataload(0)
                let arg2 := calldataload(32)

                let result := ZKSYNC_NEAR_CALL_test(555, arg1, arg2)
                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg1, arg2) -> result {
                if lt(arg1, arg2) {
                    call(0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0, 0, 0, 0, 0)
                }

                result := 777
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 666)
                return(0, 32)
            }
        }
    }
}
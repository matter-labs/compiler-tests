//! { "cases": [ {
//!     "name": "failure",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "11", "12", "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "success",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 "12", "12", "0"
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

                let go_static := calldataload(64)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 64)
                    staticcall(0, address(), 0, 64, 0, 32)
                    return(0, 32)
                }

                let result := ZKSYNC_NEAR_CALL_test(555, arg1, arg2)
                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg1, arg2) -> result {
                deeper()
                result := 777
            }

            function deeper() {
                sstore(0, 0)
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 666)
            }
        }
    }
}

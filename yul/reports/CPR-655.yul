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
//!         "1", "2"
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
                let go_static := calldataload(0)
                if eq(go_static, 1) {
                    staticcall(0, address(), 0, 32, 0, 32)
                    return(0, 32)
                }

                let return_type := 0
                switch return_type
                case 0 {
                    let result1, result2 := ZKSYNC_NEAR_CALL_tuple2(0)
                    mstore(0, result1)
                    mstore(32, result2)
                    return(0, 64)
                }
            }

            function ZKSYNC_NEAR_CALL_tuple2(abi_data) -> result1, result2 {
                result1 := 1
                result2 := 2
            }
        }
    }
}

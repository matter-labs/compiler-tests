//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     }
//! } ] }

object "Test_16" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_16_deployed" {
        code {
            {
                mstore(0, shl(224, 0x4E487B71))
                mstore(4, 0x11)
                revert(0, 0x24)
            }
        }
    }
}

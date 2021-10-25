//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4E487B7111000000000000000000000000000000000000000000000000000000",
//!         "0"
//!     ]
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

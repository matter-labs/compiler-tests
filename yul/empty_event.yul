//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "fallback": true,
//!             "calldata": [
//!                 ""
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [],
//!                 "values": ["12", "13"]
//!             }
//!         ]
//!     }
//! } ] }

object "Test" {
    code {
        {
            return(0,0)
        }
    }
    object "Test_deployed" {
        code {
            {
                mstore(0, 12)
                mstore(32, 13)

                log0(0, 64)

                return(0, 0)
            }
        }
    }
}

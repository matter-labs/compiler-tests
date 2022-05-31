//! { "cases": [ {
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
                let result1, result2 := f()
                mstore(0, result1)
                return(0, 32)
            }

            function f() -> result {
                result := 1
            }
        }
    }
}

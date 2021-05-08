//! { "cases": [ {
//!     "entry": "Test_70_deployed",
//!     "expected": 128
//! } ] }

object "Test_70" {
    code {
        {
            mstore(64, 128)
            if callvalue() { revert(0, 0) }
            let _1 := datasize("Test_70_deployed")
            codecopy(0, dataoffset("Test_70_deployed"), _1)
            return(0, _1)
        }
    }
    object "Test_70_deployed" {
        code {
            {
                mstore(64, 128)
                return(64, 32)
            }
        }
    }
}

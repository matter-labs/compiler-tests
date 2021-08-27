//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "31"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x08"
//!     ]
//! }, {
//!     "name": "middle",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "28"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x05"
//!     ]
//! }, {
//!     "name": "last",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "24"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x01"
//!     ]
//! }, {
//!     "name": "out_of_range",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x00"
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
                let value := calldataload(4)
                let index := calldataload(36)

                mstore(0, byte(index, value))
                return(0, 32)
            }
        }
    }
}


//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "0", "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0102030405060742"
//!     ]
//! }, {
//!     "name": "middle",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "3", "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x0102030442060708"
//!     ]
//! }, {
//!     "name": "last",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "7", "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4202030405060708"
//!     ]
//! }, {
//!     "name": "out_of_range",
//!     "input": [
//!         {
//!             "entry": "deadbeef",
//!             "calldata": [
//!                 "0x0102030405060708", "31", "0x42"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x4200000000000000000000000000000000000000000000000102030405060708"
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
                let byte := calldataload(68)

                mstore(0, value)
                mstore8(index, byte)

                return(0, 32)
            }
        }
    }
}

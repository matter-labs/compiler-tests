//! { "cases": [ {
//!     "name": "5_10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "5", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! },
//! {
//!     "name": "10_10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "10", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! },
//! {
//!     "name": "15_10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "15", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [ "1" ]
//! },
//! {
//!     "name": "-5_-10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "115792089237316195423570985008687907853269984665640564039457584007913129639931", "115792089237316195423570985008687907853269984665640564039457584007913129639926"
//!             ]
//!         }
//!     ],
//!     "expected": [ "1" ]
//! },
//! {
//!     "name": "-10_-10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "115792089237316195423570985008687907853269984665640564039457584007913129639926", "115792089237316195423570985008687907853269984665640564039457584007913129639926"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! },
//! {
//!     "name": "-15_-10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "115792089237316195423570985008687907853269984665640564039457584007913129639921", "115792089237316195423570985008687907853269984665640564039457584007913129639926"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! },
//! {
//!     "name": "-5_10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "115792089237316195423570985008687907853269984665640564039457584007913129639931", "10"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! },
//! {
//!     "name": "5_-10",
//!     "input": [
//!         {
//!             "entry": "adff3864",
//!             "calldata": [
//!                 "5", "115792089237316195423570985008687907853269984665640564039457584007913129639926"
//!             ]
//!         }
//!     ],
//!     "expected": [ "1" ]
//! } ] }

object "Test_222" {
    code {
        return(0, 0)
    }

    object "Test_222_deployed" {
        code {
            mstore(0, sgt(calldataload(4), calldataload(36))
            return(0, 32)
        }
    }
}

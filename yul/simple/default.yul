//! { "cases": [ {
//!     "entry": "main",
//!     "expected": 42
//! } ] }

object "Test_deployed" {
    code {
        function main() -> x: uint64 {
            let t: uint64 := 42: uint64
            x := t
        }
    }
}

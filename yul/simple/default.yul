//! { "cases": [ {
//!     "entry": "main",
//!     "expected": 1
//! } ] }

object "Test" {
    code {
        function main() -> x: uint64 {
            let t: uint64 := 1: uint64
            x := t
        }
    }
}

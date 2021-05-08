;! { "ignore": true, "cases": [ {
;!     "entry": "entry",
;!     "expected": 42
;! } ] }

; ModuleID = 'Test'
source_filename = "Test"

define i64 @entry() {
entry:
  ret i64 42
}

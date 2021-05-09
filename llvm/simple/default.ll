;! { "cases": [ {
;!     "entry": "entry",
;!     "expected": 42
;! } ] }

; ModuleID = 'Test'
source_filename = "Test"

define i64 @entry() {
entry:
  %x = mul i64 6, 7
  ret i64 %x
}

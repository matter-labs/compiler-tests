;! { "cases": [ {
;!     "name": "default",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "42"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define i256 @__simple() local_unnamed_addr #0 {
entry:
  ; offset 
  store i256 64, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  ; length
  store i256 32, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  ; actual return value
  store i256 42, i256 addrspace(1)* inttoptr (i256 64 to i256 addrspace(1)*), align 32

  %data_offset = load i256, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 1
  %data_length = load i256, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 1
  %data_length_shifted = shl i256 %data_length, 32
  %data_merged = add i256 %data_offset, %data_length_shifted
  ret i256 %data_merged
}

; Function Attrs: nounwind
declare external void @llvm.syncvm.throw() #0

attributes #0 = { nounwind }

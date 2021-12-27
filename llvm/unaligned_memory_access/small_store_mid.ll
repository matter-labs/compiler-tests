;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xDEADBEEF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFDEADBEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %offset = inttoptr i256 36 to i32 addrspace(2)*
  %loaded = load i256, i256 addrspace(2)* inttoptr(i256 96 to i256 addrspace(2)*), align 32
  %val = trunc i256 %loaded to i32

  store i32 %val, i32 addrspace(2)* %offset, align 1

  store i256 64, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  ret void
}

attributes #0 = { nounwind }

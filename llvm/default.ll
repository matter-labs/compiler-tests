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
define void @__selector() local_unnamed_addr #0 {
entry:
  store i256 32, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  store i256 42, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32

  ret void
}

; Function Attrs: nounwind
declare external void @llvm.syncvm.throw() #0

attributes #0 = { nounwind }

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
target datalayout = "E-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

declare i32 @__personality()

; Function Attrs: noreturn nounwind
define i256 @__entry(i256 %0, i256 %1, i1 %2) local_unnamed_addr #0 personality i32 ()* @__personality {
entry:
  store i256 42, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 32, 64
  tail call void @llvm.syncvm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.syncvm.return(i256) #0

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }

;! { "cases": [ {
;!     "name": "first",
;!     "input": [
;!         {
;!             "entry": "3df4ddf4",
;!             "calldata": [
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "42"
;!     ]
;! }, {
;!     "name": "second",
;!     "input": [
;!         {
;!             "entry": "5a8ac02d",
;!             "calldata": [
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "99"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %hash = load i256, i256 addrspace(2)* inttoptr (i256 224 to i256 addrspace(2)*), align 32
  store i256 1, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32
  %0 = tail call i256 @llvm.syncvm.ltflag()
  %1 = and i256 %0, 1
  %.not2 = icmp eq i256 %1, 0
  br i1 %.not2, label %return, label %throw

throw:                                            ; preds = %entry
  tail call void @llvm.syncvm.throw()
  ret void

return:                                           ; preds = %entry
  %.mask = and i256 %hash, -26959946667150639794667015087019630673637144422540572481103610249216
  %2 = icmp eq i256 %.mask, 40953307615929575801107647705360601464619672688377251939886941387873771847680
  %. = select i1 %2, i256 99, i256 42
  store i256 %., i256 addrspace(2)* inttoptr (i256 256 to i256 addrspace(2)*), align 256
  ret void
}

; Function Attrs: nounwind
declare external i256 @llvm.syncvm.ltflag() #0

; Function Attrs: nounwind
declare external void @llvm.syncvm.throw() #0

attributes #0 = { nounwind }

;! { "cases": [ {
;!     "name": "main",
;!     "input": [
;!         {
;!             "entry": "ec2194dc",
;!             "calldata": [
;!                 "4"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "12"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

define void @__selector() local_unnamed_addr {
entry:
  store i256 1, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32
  %witness = load i8, i8 addrspace(2)* inttoptr (i256 256 to i8 addrspace(2)*), align 256
  %main = call fastcc i8 @main(i8 %witness)
  %0 = zext i8 %main to i256
  store i256 %0, i256 addrspace(2)* inttoptr (i256 256 to i256 addrspace(2)*), align 256
  ret void
}

define private fastcc i8 @main(i8 %0) unnamed_addr {
entry:
  %1 = icmp slt i8 %0, 0
  %2 = and i8 %0, 126
  %3 = icmp eq i8 %2, 126
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %throw, label %join4

throw:                                            ; preds = %entry
  call void @llvm.syncvm.throw()
  unreachable

join4:                                            ; preds = %entry
  %4 = shl i8 %0, 1
  %5 = add i8 %4, 4
  ret i8 %5
}

; Function Attrs: noreturn
declare void @llvm.syncvm.throw() #0

attributes #0 = { noreturn }

;! { "cases": [ {
;!     "name": "max_max",
;!     "input": [
;!         {
;!             "entry": "deadbeef",
;!             "calldata": [
;!                 "255", "255"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "255"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

declare i32 @__personality()

; Function Attrs: noreturn
declare void @__cxa_throw(i8*, i8*, i8*) #0

define void @__selector() personality i32 ()* @__personality {
entry:
%hash = load i256, i256 addrspace(2)* inttoptr (i256 224 to i256 addrspace(2)*), align 32
%0 = lshr i256 %hash, 224
br label %left1

throw:                                            ; No predecessors!
call void @__cxa_throw(i8* align 32 null, i8* align 32 null, i8* align 32 null)
unreachable

catch:                                            ; preds = %left1
%landing = landingpad { i8*, i32 }
catch i8* null
call void @__cxa_throw(i8* align 32 null, i8* align 32 null, i8* align 32 null)
unreachable

return:                                           ; preds = %join
ret void

left1:                                            ; preds = %entry
store i256 1, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32
%a = load i8, i8 addrspace(2)* inttoptr (i256 256 to i8 addrspace(2)*), align 32
%b = load i8, i8 addrspace(2)* bitcast (i256 addrspace(2)* getelementptr (i256, i256 addrspace(2)* inttoptr (i256 256 to i256 addrspace(2)*), i256 1) to i8 addrspace(2)*), align 32
%__entry_main = invoke i8 @__entry_main(i8 %a, i8 %b)
to label %join unwind label %catch

join:                                             ; preds = %left1
%1 = zext i8 %__entry_main to i256
store i256 %1, i256 addrspace(2)* inttoptr (i256 256 to i256 addrspace(2)*), align 32
br label %return
}

define private i8 @__entry_main(i8 %0, i8 %1) personality i32 ()* @__personality {
entry:
%__entry_main = alloca i8, align 32
%a = alloca i8, align 32
store i8 %0, i8* %a, align 32
%b = alloca i8, align 32
store i8 %1, i8* %b, align 32
%a1 = load i8, i8* %a, align 32
%b2 = load i8, i8* %b, align 32
%2 = alloca i8, align 32
store i8 0, i8* %2, align 32
%3 = alloca i8, align 32
store i8 %a1, i8* %3, align 32
%4 = alloca i8, align 32
store i8 %b2, i8* %4, align 32
%5 = alloca i256, align 32
store i256 0, i256* %5, align 32
%6 = alloca i8, align 32
store i8 1, i8* %6, align 32
br label %condition

throw:                                            ; No predecessors!
call void @__cxa_throw(i8* align 32 null, i8* align 32 null, i8* align 32 null)
unreachable

catch:                                            ; No predecessors!
%landing = landingpad { i8*, i32 }
catch i8* null
call void @__cxa_throw(i8* align 32 null, i8* align 32 null, i8* align 32 null)
unreachable

return:                                           ; preds = %join
%__entry_main3 = load i8, i8* %__entry_main, align 32
ret i8 %__entry_main3

condition:                                        ; preds = %increment, %entry
%7 = load i256, i256* %5, align 32
%8 = icmp ult i256 %7, 8
br i1 %8, label %body, label %join

body:                                             ; preds = %condition
%9 = load i8, i8* %3, align 32
%10 = load i8, i8* %4, align 32
%11 = urem i8 %9, 2
%12 = urem i8 %10, 2
%13 = udiv i8 %9, 2
store i8 %13, i8* %3, align 32
%14 = udiv i8 %10, 2
store i8 %14, i8* %4, align 32
%15 = add i8 %11, %12
%16 = icmp ugt i8 %15, 0
%17 = zext i1 %16 to i8
%18 = load i8, i8* %6, align 32
%19 = mul i8 %17, %18
%20 = mul i8 %18, 2
store i8 %20, i8* %6, align 32
%21 = load i8, i8* %2, align 32
%22 = add i8 %21, %19
store i8 %22, i8* %2, align 32
br label %increment

increment:                                        ; preds = %body
%23 = load i256, i256* %5, align 32
%24 = add i256 %23, 1
store i256 %24, i256* %5, align 32
br label %condition

join:                                             ; preds = %condition
%25 = load i8, i8* %2, align 32
store i8 %25, i8* %__entry_main, align 32
br label %return
}

attributes #0 = { noreturn }

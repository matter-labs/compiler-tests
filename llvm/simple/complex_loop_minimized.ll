;! { "cases": [ {
;!     "entry": "entry",
;!     "expected": 60
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

define dso_local i64 @entry() {
entry:
  %entry1 = alloca i64, align 32
  %"3" = call i64 @test(i8 32)
  %"32" = call i64 @test(i8 33)
  %0 = add i64 %"3", %"32"
  store i64 %0, i64* %entry1, align 32
  br label %return

throw:                                            ; No predecessors!
  %entry3 = load i64, i64* %entry1, align 32
  call void @llvm.syncvm.throw()
  ret i64 %entry3

return:                                           ; preds = %entry
  %entry4 = load i64, i64* %entry1, align 32
  ret i64 %entry4
}

define private i64 @test(i8 %0) {
entry:
  %test = alloca i64, align 32
  %param = alloca i8, align 32
  store i8 %0, i8* %param, align 32
  %param1 = load i8, i8* %param, align 32
  %pcopy = alloca i8, align 32
  store i8 %param1, i8* %pcopy, align 32
  %cnt = alloca i64, align 32
  store i64 0, i64* %cnt, align 32
  %p = alloca i8, align 32
  store i8 0, i8* %p, align 32
  br label %body

throw:                                            ; No predecessors!
  %test31 = load i64, i64* %test, align 32
  call void @llvm.syncvm.throw()
  ret i64 %test31

return:                                           ; preds = %join
  %test32 = load i64, i64* %test, align 32
  ret i64 %test32

body:                                             ; preds = %join8, %br_true_20_24, %entry
  %p2 = load i8, i8* %p, align 32
  %1 = add i8 %p2, 2
  store i8 %1, i8* %p, align 32
  %p4 = load i8, i8* %p, align 32
  %2 = urem i8 %p4, 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %br_true_17_23, label %br_false_17_9

join:                                             ; preds = %br_true_17_23
  %cnt30 = load i64, i64* %cnt, align 32
  store i64 %cnt30, i64* %test, align 32
  br label %return

join3:                                            ; preds = %br_false_17_9
  %pcopy6 = load i8, i8* %pcopy, align 32
  %4 = icmp eq i8 %pcopy6, 12
  br i1 %4, label %br_true_20_24, label %br_false_20_9

br_true_17_23:                                    ; preds = %body
  br label %join

br_false_17_9:                                    ; preds = %body
  br label %join3

join5:                                            ; preds = %br_false_20_9
  %k = alloca i8, align 32
  store i8 0, i8* %k, align 32
  br label %condition

br_true_20_24:                                    ; preds = %join3
  br label %body

br_false_20_9:                                    ; preds = %join3
  br label %join5

condition:                                        ; preds = %increment, %join5
  %k9 = load i8, i8* %k, align 32
  %5 = icmp ule i8 %k9, 1
  br i1 %5, label %body7, label %join8

body7:                                            ; preds = %condition
  %x = alloca i8, align 32
  store i8 0, i8* %x, align 32
  br label %condition11

increment:                                        ; preds = %join14
  %k10 = load i8, i8* %k, align 32
  %6 = add i8 %k10, 1
  store i8 %6, i8* %k, align 32
  br label %condition

join8:                                            ; preds = %condition
  br label %body

condition11:                                      ; preds = %increment13, %body7
  %x15 = load i8, i8* %x, align 32
  %7 = icmp ule i8 %x15, 1
  br i1 %7, label %body12, label %join14

body12:                                           ; preds = %condition11
  %y = alloca i8, align 32
  store i8 10, i8* %y, align 32
  br label %condition17

increment13:                                      ; preds = %join19
  %x16 = load i8, i8* %x, align 32
  %8 = add i8 %x16, 1
  store i8 %8, i8* %x, align 32
  br label %condition11

join14:                                           ; preds = %condition11
  br label %increment

condition17:                                      ; preds = %join26, %br_true_29_35, %body12
  %y20 = load i8, i8* %y, align 32
  %9 = icmp ult i8 %y20, 17
  br i1 %9, label %body18, label %join19

body18:                                           ; preds = %condition17
  %y21 = load i8, i8* %y, align 32
  %10 = add i8 %y21, 1
  store i8 %10, i8* %y, align 32
  %y23 = load i8, i8* %y, align 32
  %11 = urem i8 %y23, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %br_true_29_35, label %br_false_29_21

join19:                                           ; preds = %br_true_35_46, %br_true_32_32, %condition17
  br label %increment13

join22:                                           ; preds = %br_false_29_21
  %y25 = load i8, i8* %y, align 32
  %13 = icmp eq i8 %y25, 16
  br i1 %13, label %br_true_32_32, label %br_false_32_21

br_true_29_35:                                    ; preds = %body18
  br label %condition17

br_false_29_21:                                   ; preds = %body18
  br label %join22

join24:                                           ; preds = %br_false_32_21
  %pcopy27 = load i8, i8* %pcopy, align 32
  %14 = icmp eq i8 %pcopy27, 32
  %y28 = load i8, i8* %y, align 32
  %15 = icmp ugt i8 %y28, 13
  %16 = and i1 %14, %15
  br i1 %16, label %br_true_35_46, label %br_false_35_21

br_true_32_32:                                    ; preds = %join22
  br label %join19

br_false_32_21:                                   ; preds = %join22
  br label %join24

join26:                                           ; preds = %br_false_35_21
  %cnt29 = load i64, i64* %cnt, align 32
  %17 = add i64 %cnt29, 1
  store i64 %17, i64* %cnt, align 32
  br label %condition17

br_true_35_46:                                    ; preds = %join24
  br label %join19

br_false_35_21:                                   ; preds = %join24
  br label %join26
}

; Function Attrs: nounwind
declare void @llvm.syncvm.throw() #0

attributes #0 = { nounwind }

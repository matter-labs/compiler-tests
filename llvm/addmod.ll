;! { "cases": [ {
;!     "name": "zero",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                 "42",
;!                 "25",
;!                 "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0"
;!     ]
;! }, {
;!     "name": "default",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                 "42",
;!                 "25",
;!                 "24"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "19"
;!     ]
;! }, {
;!     "name": "overflow",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
;!                 "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
;!                 "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
;!     ]
;! } ] }

target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %arg1 = load i256, i256 addrspace(2)* inttoptr(i256 32 to i256 addrspace(2)*), align 32
  %arg2 = load i256, i256 addrspace(2)* inttoptr(i256 64 to i256 addrspace(2)*), align 32
  %modulo = load i256, i256 addrspace(2)* inttoptr(i256 96 to i256 addrspace(2)*), align 32
  %is_zero = icmp eq i256 %modulo, 0
  br i1 %is_zero, label %return, label %addmod

addmod:
  %arg1m = urem i256 %arg1, %modulo
  %arg2m = urem i256 %arg2, %modulo
  %res = call {i256, i1} @llvm.uadd.with.overflow.i256(i256 %arg1m, i256 %arg2m)
  %sum = extractvalue {i256, i1} %res, 0
  %obit = extractvalue {i256, i1} %res, 1
  %sum.mod = urem i256 %sum, %modulo
  br i1 %obit, label %overflow, label %return

overflow:
  %mod.inv = xor i256 %modulo, -1
  %sum1 = add i256 %sum, %mod.inv
  %sum.ovf = add i256 %sum1, 1
  br label %return

return:
  %value = phi i256 [0, %entry], [%sum.mod, %addmod], [%sum.ovf, %overflow]
  store i256 32, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  store i256 %value, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32

  ret void
}

declare {i256, i1} @llvm.uadd.with.overflow.i256(i256, i256)

attributes #0 = { nounwind }

;
;declare void @llvm.memcpy.p1i256.p2i256.i256(i256 addrspace(1)*, i256 addrspace(2)*, i256, i1)
;    .text
;    .file   "main"
;    .globl  __selector
;    .type   __selector,@function
;__selector:
;        mov.p 8, r1
;        mov.p 9, r2
;        mov.p 10, r3
;
;        sub r3, r0, r0
;        je .zero, .non_zero
;.zero:
;        add r3, r0, r1
;        j .return, .return
;.non_zero:
;        div r1, r3, r0, r1
;        div r2, r3, r0, r2
;        add r1, r2, r4
;        jlt .overflow, .normal
;.normal:
;        div r4, r3, r0, r1
;        j .return, .return
;.overflow:
;        sfll #340282366920938463463374607431768211455, r5, r5
;        sflh #340282366920938463463374607431768211455, r5, r5
;        sfll #1, r6, r6
;        xor r3, r5, r3
;        add r4, r3, r4
;        add r4, r6, r1
;        j .return, .return
;.return:
;        mov.p r1, 8
;        ret
;.Lfunc_end0:
;        .size   __selector, .Lfunc_end0-__selector
;
;        .section        ".note.GNU-stack","",@progbits

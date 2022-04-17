;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0"
;!     ]
;! }, {
;!     "name": "1",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "1"
;!     ]
;! }, {
;!     "name": "2",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "2"
;!     ]
;! }, {
;!     "name": "3",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x0000000000000100000000000000000000000000000000000000000000000000"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "55"
;!     ]
;! }, {
;!     "name": "4",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "256"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %arg = load i256, i256 addrspace(2)* inttoptr(i256 32 to i256 addrspace(2)*), align 32
  %res = call i256 @__clz(i256 %arg)

  store i256 32, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  store i256 %res, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32

  ret void
}

attributes #0 = { nounwind }
declare i256 @__clz(i256)

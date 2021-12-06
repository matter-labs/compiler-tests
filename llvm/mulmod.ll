;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "1",
;!                "2",
;!                "0"
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
;!                "42",
;!                "42",
;!                "1764"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0"
;!     ]
;! }, {
;!     "name": "2",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "41",
;!                "2",
;!                "40"
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
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "2",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE"
;!     ]
;! }, {
;!     "name": "4",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x000000000000000000584D2AF1A1416B1F5F2B856DE5EE852CE4AB806250494C"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %arg1 = load i256, i256 addrspace(2)* inttoptr(i256 32 to i256 addrspace(2)*), align 32
  %arg2 = load i256, i256 addrspace(2)* inttoptr(i256 64 to i256 addrspace(2)*), align 32
  %mod = load i256, i256 addrspace(2)* inttoptr(i256 96 to i256 addrspace(2)*), align 32
  %res = call i256 @__mulmod(i256 %arg1, i256 %arg2, i256 %mod)

  store i256 32, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  store i256 %res, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32

  ret void
}

attributes #0 = { nounwind }
declare i256 @__mulmod(i256, i256, i256)

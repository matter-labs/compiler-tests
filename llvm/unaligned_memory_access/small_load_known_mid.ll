;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0x1D1C1B1A"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

; Function Attrs: nounwind
define void @__selector() local_unnamed_addr #0 {
entry:
  %ptr = inttoptr i256 34 to i32 addrspace(2)*
  %data = load i32, i32 addrspace(2)* %ptr, align 1

  %datae = zext i32 %data to i256

  store i256 32, i256 addrspace(2)* inttoptr (i256 0 to i256 addrspace(2)*), align 32
  store i256 %datae, i256 addrspace(2)* inttoptr (i256 32 to i256 addrspace(2)*), align 32

  ret void
}

attributes #0 = { nounwind }

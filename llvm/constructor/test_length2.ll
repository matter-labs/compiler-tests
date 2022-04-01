;! { "cases": [ {
;!     "name": "one",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!               "100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0"
;!     ]
;! } ] }

; ModuleID = 'Test_65'
source_filename = "Test_65"
target datalayout = "E-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

declare i32 @__personality()

; Function Attrs: noprofile
declare void @__cxa_throw(i8*, i8*, i8*) #0

; Function Attrs: nounwind
define i256 @__entry() local_unnamed_addr #0 {
entry:
  %arg = load i256, i256 addrspace(2)* inttoptr(i256 0 to i256 addrspace(2)*), align 32

  store i256 %arg, i256 addrspace(1)* inttoptr (i256 16777152 to i256 addrspace(1)*), align 1

  %round_up_to_mul_of_32_return_value = call i256 @test_length()

  store i256 0, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  %data_offset = load i256, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 1

  store i256 32, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  %data_length = load i256, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 1
  %data_length_shifted = shl i256 %data_length, 32
  %data_merged = add i256 %data_offset, %data_length_shifted

  store i256 %round_up_to_mul_of_32_return_value, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  ret i256 %data_merged
}

define private i256 @test_length() {
entry:
  %calldata_value15 = load i256, i256 addrspace(1)* inttoptr (i256 16777152 to i256 addrspace(1)*), align 1
  %addition_result = add i256 %calldata_value15, -4
  %comparison_result16 = icmp slt i256 %addition_result, 96
  %comparison_result_extended17 = zext i1 %comparison_result16 to i256

  %if_condition_compared18 = icmp ne i256 %comparison_result_extended17, 0

  %ret_value = zext i1 %if_condition_compared18 to i256
  ret i256 %ret_value
}

attributes #0 = { noprofile }
attributes #1 = { argmemonly nofree nounwind willreturn }


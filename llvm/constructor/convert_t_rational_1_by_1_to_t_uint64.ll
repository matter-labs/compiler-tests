;! { "cases": [ {
;!     "name": "one",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!               "1"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "1"
;!     ]
;! }, {
;!     "name": "thirtyone",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!               "31"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "31"
;!     ]
;! }, {
;!     "name": "thirtythree",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!               "33"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "33"
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
define i256 @__entry() local_unnamed_addr #0  personality i32 ()* @__personality {
entry:
  %arg = load i256, i256 addrspace(2)* inttoptr(i256 0 to i256 addrspace(2)*), align 32
  
  %convert_t_rational_1_by_1_to_t_uint64_return_value = invoke i256 @convert_t_rational_1_by_1_to_t_uint64(i256 %arg) 
          to label %join unwind label %catch
join:
  store i256 0, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  %data_offset = load i256, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 1

  store i256 32, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  %data_length = load i256, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 1
  %data_length_shifted = shl i256 %data_length, 32
  %data_merged = add i256 %data_offset, %data_length_shifted

  store i256 %convert_t_rational_1_by_1_to_t_uint64_return_value, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  ret i256 %data_merged

catch:
  %landing = landingpad { i8*, i32 }
          catch i8* null
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable
}

define private i256 @convert_t_rational_1_by_1_to_t_uint64(i256 %0) personality i32 ()* @__personality {
entry:
  %return_pointer = alloca i256, align 32
  store i256 0, i256* %return_pointer, align 32
  %value = alloca i256, align 32
  store i256 %0, i256* %value, align 32
  %value1 = load i256, i256* %value, align 32
  %cleanup_t_rational_1_by_1_return_value = invoke i256 @cleanup_t_rational_1_by_1(i256 %value1)
          to label %join unwind label %catch

throw:                                            ; No predecessors!
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

catch:                                            ; preds = %join2, %join, %entry
  %landing = landingpad { i8*, i32 }
          catch i8* null
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

return:                                           ; preds = %join3
  %return_value = load i256, i256* %return_pointer, align 32
  ret i256 %return_value

join:                                             ; preds = %entry
  %identity_return_value = invoke i256 @identity(i256 %cleanup_t_rational_1_by_1_return_value)
          to label %join2 unwind label %catch

join2:                                            ; preds = %join
  %cleanup_t_uint64_return_value = invoke i256 @cleanup_t_uint64(i256 %identity_return_value)
          to label %join3 unwind label %catch

join3:                                            ; preds = %join2
  store i256 %cleanup_t_uint64_return_value, i256* %return_pointer, align 32
  br label %return
}

define private i256 @cleanup_t_rational_1_by_1(i256 %0) personality i32 ()* @__personality {
entry:
  %return_pointer = alloca i256, align 32
  store i256 0, i256* %return_pointer, align 32
  %value = alloca i256, align 32
  store i256 %0, i256* %value, align 32
  %value1 = load i256, i256* %value, align 32
  store i256 %value1, i256* %return_pointer, align 32
  br label %return

throw:                                            ; No predecessors!
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

catch:                                            ; No predecessors!
  %landing = landingpad { i8*, i32 }
          catch i8* null
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

return:                                           ; preds = %entry
  %return_value = load i256, i256* %return_pointer, align 32
  ret i256 %return_value
}

define private i256 @cleanup_t_uint64(i256 %0) personality i32 ()* @__personality {
entry:
  %return_pointer = alloca i256, align 32
  store i256 0, i256* %return_pointer, align 32
  %value = alloca i256, align 32
  store i256 %0, i256* %value, align 32
  %value1 = load i256, i256* %value, align 32
  %and_result = and i256 %value1, 18446744073709551615
  store i256 %and_result, i256* %return_pointer, align 32
  br label %return

throw:                                            ; No predecessors!
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

catch:                                            ; No predecessors!
  %landing = landingpad { i8*, i32 }
          catch i8* null
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

return:                                           ; preds = %entry
  %return_value = load i256, i256* %return_pointer, align 32
  ret i256 %return_value
}

define private i256 @identity(i256 %0) personality i32 ()* @__personality {
entry:
  %return_pointer = alloca i256, align 32
  store i256 0, i256* %return_pointer, align 32
  %value = alloca i256, align 32
  store i256 %0, i256* %value, align 32
  %value1 = load i256, i256* %value, align 32
  store i256 %value1, i256* %return_pointer, align 32
  br label %return

throw:                                            ; No predecessors!
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

catch:                                            ; No predecessors!
  %landing = landingpad { i8*, i32 }
          catch i8* null
  call void @__cxa_throw(i8* null, i8* null, i8* null)
  unreachable

return:                                           ; preds = %entry
  %return_value = load i256, i256* %return_pointer, align 32
  ret i256 %return_value
}

attributes #0 = { noprofile }
attributes #1 = { argmemonly nofree nounwind willreturn }


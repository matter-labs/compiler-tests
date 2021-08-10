//! { "cases": [ {
//!     "entry": "__selector",
//!     "expected": 0
//! } ] }

object "Test" {
    code {
        return(0, 0)
    }
    object "Test_deployed" {
        code {
            mstore(64, 128)
            let ret_0 := fun_main_32()
            let memPos := mload(64)
            mstore(memPos, ret_0)
            return(memPos, 32)
            
            function cleanup_t_uint8(value) -> cleaned
            { 
                cleaned := and(value, 0xff)
            }
            function convert_t_uint8(value) -> converted
            {
                converted := and(value, 0xff)
            }
            function increment_t_uint8(value) -> ret
            {
                if eq(value, 0xff) { revert(0, 0) }
                ret := add(value, 1)
            }

            function fun_main_32() -> var__4
            {
                var__4 := 0
                let expr_8 := 0x00
                let var_param_7 := expr_8
                for {
                    let expr_12 := 0x00
                    let var_i_11 := expr_12
                }
                1
                {
                    let _3 := var_i_11
                    let _2 := increment_t_uint8(_3)
                    var_i_11 := _2
                    let expr_18 := _3
                }
                {
                    let _4 := var_i_11
                    let expr_14 := _4
                    let expr_15 := 0x01
                    let expr_16 := lt(cleanup_t_uint8(expr_14), convert_t_uint8(expr_15))
                    if iszero(expr_16) { break }
                    let _5 := var_param_7
                    let expr_20 := _5
                    let expr_21 := 0x00
                    let expr_22 := eq(cleanup_t_uint8(expr_20), convert_t_uint8(expr_21))
                    if expr_22
                    {
                        let expr_23 := 0x00
                        var__4 := expr_23
                        leave
                    }
                }
                let expr_29 := 0x63
                var__4 := expr_29
                leave
            }
        }
    }
}
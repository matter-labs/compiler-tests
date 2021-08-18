//! { "cases": [ {
//!     "name": "f",
//!     "input": [
//!         {
//!             "entry": "f",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

object "Test" {
    code {
        return(0, 0)
    }
    object "Test_deployed" {
        code {
            mstore(64, 128)
            let ret_0 := fun_main_29()
            mstore(64, ret_0)
            return(64, 32)            
            
            function fun_main_29() -> var_a_10
            {
                var_a_10 := 0
                
                let _2 := 0x03

                let expr_12 := 0x00
                let expr_13 := 0x02
                let _4 := mapping(expr_12, expr_13)

                let expr_15 := _4
                let expr_14 := 0x03
                let _6 := mapping(expr_15, expr_14)

                sstore(_6, _2)

                let expr_21 := 0x00
                let expr_22 := 0x03
                let _8 := mapping(expr_21, expr_22)

                let expr_23 := _8
                let expr_24 := 0x02
                let _10 := mapping(expr_23, expr_24)

                var_a_10 := sload(_10)
            }
            
            function mapping(slot, key) -> dataSlot
            {
                mstore(0, key)
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }
        }
    }
}

//! { "cases": [ {
//!     "entry": "__selector",
//!     "expected": 67
//! } ] }

object "Test" {
    code {
        {
            return(0, 0)
        }
    }
    object "Test_deployed" {
        code {
            {
                mstore(64, 128)
                let ret_2 := and(checked_add_uint8(0x2a, 0x19), 0xff)
                let memPos_2 := allocate_memory(0)
                mstore(memPos_2, ret_2)
                return(memPos_2, 32)
            }
            function allocate_memory(size) -> memPtr
            {
                if gt(mload(64), 0xffffffffffffffff)
                {
                    revert(0, 0x24)
                }
            }
            function checked_add_uint8(x, y) -> sum
            {
                let x_1 := and(x, 0xff)
                let y_1 := and(y, 0xff)
                sum := add(x_1, y_1)
                if gt(x_1, sub(0xff, y_1))
                {
                    revert(0, 0x24)
                }
            }
        }
    }
}

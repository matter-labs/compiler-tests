//! { "cases": [ {
//!     "entry": "Test_70_deployed",
//!     "expected": 5050
//! } ] }

object "Test_70" {
    code {
        {
            mstore(64, 128)
            if callvalue() { revert(0, 0) }
            let _1 := datasize("Test_70_deployed")
            codecopy(0, dataoffset("Test_70_deployed"), _1)
            return(0, _1)
        }
    }
    object "Test_70_deployed" {
        code {
            {
                mstore(64, 128)
                if iszero(lt(calldatasize(), 4))
                {
                    let _1 := 0
                    if eq(0x67f239dd, shr(224, calldataload(_1)))
                    {
                        if callvalue() { revert(_1, _1) }
                        if slt(add(calldatasize(), not(3)), _1) { revert(_1, _1) }
                        let expr := fun_main(0x64, 0x01)
                        let var := checked_add_uint256(expr, fun_main(0x64, _1))
                        let memPtr := mload(64)
                        if gt(memPtr, 0xffffffffffffffff)
                        {
                            mstore(_1, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(_1, 0x24)
                        }
                        mstore(64, memPtr)
                        return(memPtr, sub(abi_encode_uint256(memPtr, var), memPtr))
                    }
                }
                revert(0, 0)
            }
            function abi_encode_uint256(headStart, value0) -> tail
            {
                tail := add(headStart, 32)
                mstore(headStart, value0)
            }
            function checked_add_uint256(x, y) -> sum
            {
                if gt(x, not(y)) { panic_error_0x11() }
                sum := add(x, y)
            }
            function fun_main(var_a, var_is_odd) -> var
            {
                let var_result := var
                let var_i := 0x01
                for { }
                iszero(gt(var_i, var_a))
                {
                    if eq(var_i, not(0)) { panic_error_0x11() }
                    var_i := add(var_i, 0x01)
                }
                {
                    switch var_is_odd
                    case 0 {
                        if eq(and(var_i, 0x01), var)
                        {
                            var_result := checked_add_uint256(var_result, var_i)
                        }
                    }
                    default {
                        if iszero(eq(and(var_i, 0x01), var))
                        {
                            var_result := checked_add_uint256(var_result, var_i)
                        }
                    }
                }
                var := var_result
            }
            function panic_error_0x11()
            {
                mstore(0, shl(224, 0x4e487b71))
                mstore(4, 0x11)
                revert(0, 0x24)
            }
        }
    }
}

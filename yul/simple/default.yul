//! { "cases": [ {
//!     "entry": "__selector",
//!     "expected": 42
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
                let memPos := allocate_memory(0)
                mstore(memPos, 0x2a)
                return(memPos, 32)
            }
            function allocate_memory(size) -> memPtr
            {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, and(add(size, 31), not(31)))
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr))
                {
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
            }
        }
    }
}

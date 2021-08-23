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

object "Test_22" {
    code {
        return (0, 0)
    }
    object "Test_22_deployed" {
        code {
            mstore(64, 128)
        
            mstore(0, 0x01) 
            mstore(0x20, 0x00)
            let slot := keccak256(0, 0x40)
            
            let memPos := allocate_memory(0)
            mstore(memPos, 0)
            return(memPos, 32)
             
            function allocate_memory(size) -> memPtr
            {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, and(add(size, 31), not(31)))
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) {
                    mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
            }
        }
    }
}
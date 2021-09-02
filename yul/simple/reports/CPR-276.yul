//! { "cases": [ {
//!     "name": "default",
//!     "input": [
//!         {
//!             "entry": "a",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [ "0" ]
//! } ] }

object "ERC20_14" {
    code {
        {
            return(0, 0)
        }
        function allocateMemory(size) -> memPtr
        {
            memPtr := mload(64)
            let newFreePtr := add(memPtr, size)
            //let newFreePtr := add(memPtr, and(add(size, 31), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) // - with this line instead previous (as in solc-0.8.1+) it works
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }
        function panic_error_0x41()
        {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }
    }
    object "ERC20_14_deployed" {
        code {
            {
                mstore(64, 128)
                let programSize := datasize("ERC20_14")
                let argSize := sub(codesize(), programSize)
                let memoryDataOffset := allocateMemory(argSize)
                codecopy(memoryDataOffset, programSize, argSize)
                let _1 := add(memoryDataOffset, argSize)
                let _2 := 32
                let offset := mload(memoryDataOffset)
                let _3 := 0xffffffffffffffff
                let _4 := add(memoryDataOffset, offset)
                let _5 := mload(_4)
                let array := allocateMemory(add(and(add(_5, 0x1f), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), _2))
                mstore(array, _5)
                let i := 0
                for { } lt(i, _5) { i := add(i, _2) }
                {
                    mstore(add(add(array, i), _2), mload(add(add(_4, i), _2)))
                }
                if gt(i, _5)
                {
                    mstore(add(add(array, _5), _2), 0)
                }
                let newLen := mload(array)
                if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }
                return(0, 0)
            }
        }
    }
}
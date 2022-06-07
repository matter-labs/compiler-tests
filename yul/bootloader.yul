//! { "cases": [] }

object "Bootloader" {
    code {
    }
    object "Bootloader_deployed" {
        code {
            // Unfortunately there is no way
            // to express a constant in Yul without runtime overhead.
            // The overhead is quite small, so I believe it is more appropriate
            // to use named constants here for readibility.
            let MAX_NEW_CODE_HASHES := 16
            let MAX_TXS_IN_BLOCK := 6

            // 32 bytes
            let CELL_SIZE := 0x20
            
            // The memory that can be acessed by the app starts from
            // the slot 0x80. However, we want to reserve some of these slots 
            // as temporary ones, mostly to reuse them for calls with little calldata
            // or calls with little returndata.
            let FREE_MEM_START_PTR := 0x00
            let RESERVED_FREE_SLOTS := 3

            let OPERATOR_ADDRESS := mload(FREE_MEM_START_PTR)

            let NEW_CODE_HASHES_START_PTR := add(FREE_MEM_START_PTR, mul(RESERVED_FREE_SLOTS, CELL_SIZE))
            let TX_DESCRIPTION_START_PTR := add(NEW_CODE_HASHES_START_PTR, mul(MAX_NEW_CODE_HASHES, CELL_SIZE))

            // Each tx description has the following structure
            // 
            // struct BootloaderTxDescription {
            //     bool execute;
            //     uint256 txDataOffset;
            //     uint256 operatorAcceptedFee;
            // }
            //
            // It will consume 3 words
            let TX_DESCRIPTION_SIZE := mul(CELL_SIZE, 3)
            let TXS_IN_BLOCK_LAST_PTR := add(TX_DESCRIPTION_START_PTR, mul(MAX_TXS_IN_BLOCK, TX_DESCRIPTION_SIZE))

            // The memory page consists of 2^16 VM words.
            // Each execution result is a single boolean, but 
            // for the sake of simplicity we will spend 32 bytes on each
            // of those for now. 
            let MAX_MEM_SIZE := 0x1000000 // 2^24 bytes
            let RESULTS_START_PTR := sub(MAX_MEM_SIZE, mul(MAX_TXS_IN_BLOCK, CELL_SIZE))

            // The constant may be different in production.
            let KNOWN_CODES_CONTRACT_ADDR := 0x0000000000000000000000000000000000008004

            // This address will be used as dummy address for all the other system contracts
            // The exact addresses of the system contracts are yet to be known and are not relevant. 
            // address constant dummyAddress = address(0x0);
            // address constant BOOTLOADER_ADDRESS = address(0x1);

            // Input is layed out the following way:
            // Starting from the memory slot NEW_CODE_HASHES_START_PTR there are `MAX_NEW_CODE_HASHES` 256-bit code 
            // hashes. Then there are `MAX_TXS_IN_BLOCK` basic transaction data pointers.

            // This function selector will be the same for the loop below

            mstore(sub(NEW_CODE_HASHES_START_PTR, CELL_SIZE), 0xd2784f7a)    

            // The call itself.
            let knownCodesSuccess := call(
                gas(), // The number of ergs to pass.
                KNOWN_CODES_CONTRACT_ADDR, // The address to call.
                0, // The `value` to pass (always zero on zkSync).
                sub(NEW_CODE_HASHES_START_PTR, 4), // The pointer to the calldata.
                add(4, mul(MAX_NEW_CODE_HASHES, CELL_SIZE)), // The size of the calldata, which is 36 bytes (4 for selector + 32 for the hash).
                0, // There is no returned data
                0 // The output has size of 0.
            )

            if iszero(knownCodesSuccess) {
                revert(0,0)
            }

            // Now, we iterate over all transactions, processing each of them
            // one by one.
            // Here, the `resultPtr` is the pointer to the memory slot, where we will write
            // `true` or `false` based on whether the tx execution was successful,
            let ptr := TX_DESCRIPTION_START_PTR
            // mstore(TX_DESCRIPTION_SIZE, 1)
            for { let resultPtr := RESULTS_START_PTR } lt(ptr, TXS_IN_BLOCK_LAST_PTR) { 
                ptr := add(ptr, TX_DESCRIPTION_SIZE)
                resultPtr := add(resultPtr, CELL_SIZE)
            } {
                let execute := mload(ptr)
                if iszero(execute) {
                    // We expect that all transactions that are executed
                    // are continuous in the array.
                    break
                }

                let txDataOffsetPtr := add(ptr, CELL_SIZE)
                let txDataOffset := mload(txDataOffsetPtr)

                let operatorAcceptedFeePtr := add(txDataOffsetPtr, CELL_SIZE)
                let operatorAcceptedFee := mload(operatorAcceptedFeePtr)
                
                processTx(txDataOffset, operatorAcceptedFee, resultPtr, OPERATOR_ADDRESS)
            }
            
            function lengthToWords(len) -> ret {
                let p := div(len, 32)
                ret := add(mul(p, 32), 32)

                if iszero(mod(len, 32)) {
                    ret := sub(p, 32)
                }
            }

            function getDataPtr(txData) -> ret {
                ret := mload(add(txData, 416))
                ret := add(ret, txData)
            }

            function getDataLength(txData) -> ret {
                // To get the length of the txData in bytes, we can simply
                // get the number of fields * 32 + the length of the dynamic types
                // in bytes.
                // The exact structure can be seen below. 
                // The struct has 16 fixed size fields + 1 first word.
                // 32 * 16 = 512
                let baseLength := 512

                // The last three elements are of `bytes` type.
                // 32 * 13 = 416
                let dataLengthPos := mload(add(txData, 416))
                // We add the length of the `data` here: 
                let dataLengthRaw := mload(add(txData, dataLengthPos))
                baseLength := add(baseLength, lengthToWords(dataLengthRaw))

                // We add the length of the `signature` here:
                let signatureLengthPos := mload(add(txData, 448))
                let signatureLengthRaw := mload(add(txData, signatureLengthPos))
                baseLength := add(baseLength, lengthToWords(signatureLengthRaw))

                // We add the length of the `reservedDynamic` here:
                let reservedDynamicLengthPos := mload(add(txData, 480))
                let reservedDynamicLengthRaw := mload(add(txData, signatureLengthPos))
                baseLength := add(baseLength, lengthToWords(reservedDynamicLengthRaw))

                // Note that we should also count the words where the lengths
                // are stored
                baseLength := add(baseLength, 96)

                ret := baseLength
            }

            function processTx(
                txDataOffset, 
                operatorAcceptedFee, 
                resultPtr,
                operatorAddress
            ) {
                // Each of the txs have the following type:
                //
                // struct TxData {
                //     uint8 txType;
                //     address from;
                //     address to;
                //     address feeToken;
                //     uint32 ergsLimit;
                //     uint32 pubdataPriceLimit;
                //     uint256 ergsPrice; 
                //     // In the future, we might want to add some
                //     // new fields to the struct. The `txData` struct
                //     // is to be passed to AA and any changes to its structure
                //     // would mean a breaking change to these AAs. In order to prevent this,
                //     // we should keep some fields as "reserved".
                //     // It is also recommneded that their length is fixed, since 
                //     // it would allow easier proof integration (in case we will need
                //     // some special circuit for preprocessing transactions).
                //     uint256 reserved[6];
                //     bytes data;
                //     bytes signature;
                //     // Reserved dynamic type for the future use-case. Using it should be avoided,
                //     // But it is still here, just in case we want to enable some additional functionality.
                //     bytes reservedDynamic;
                // }
                // 
                // To avoid a lot of memory copying we do the following trick:
                // The information about different txs is not stored sequentially.
                // There is always a one-word gap so that the bytes in range
                // [txDataOffset-4..txDataOffset-1] can be used as a selector for `execute`
                // and `validate` calls. 
                
                // TODO: we should probably add type checks
                // since the malicious operator could potentially provide 
                // bad data here.

                let innerTxDataOffset := add(txDataOffset, 32)
                let txType := getTxType(innerTxDataOffset)

                let FROM_L1_TX_TYPE := 255
                let isL1Tx := eq(txType, FROM_L1_TX_TYPE)

                let ergsLimit := getErgsLimit(innerTxDataOffset)
                let userProvidedPubdataPrice := getTxPubdataPrice(innerTxDataOffset)
                let ergsPrice := getErgsPrice(innerTxDataOffset)

                let pubDataCostInBlock := getErgsPerPubdataByteBlock()
                let pubdataPrice := pubDataCostInBlock

                if and(isL1Tx, lt(userProvidedPubdataPrice, pubDataCostInBlock)) {
                    pubdataPrice := userProvidedPubdataPrice
                }

                // Packed params have the following structure:
                // pub struct NearCallABI {
                //     pub ergs_passed: u32,
                //     pub pubdata_byte_cost_to_set: u32,
                // }
                // All of the fields are tightly packed in a single uin256
                // where the first 32 bits are equal to the "ergsPassed"
                // and the next 32 bits are equal to the "pubdataPrice"
                let packedParams := or(ergsLimit, shl(32, pubdataPrice))

                // Do the near call and execute the tx.
                // Result equals to `true` or `false` based on whether or not 
                // the tx execution has reverted.
                // TODO: handle exceptions once the compiler supports it.
                let result := ZKSYNC_NEAR_CALL_validateAndExecuteTx(
                    packedParams,
                    isL1Tx,
                    txDataOffset,
                    operatorAddress
                )
 
                mstore(resultPtr, result)
            }

            function getTxType(txDataOffset) -> ret {
                ret := mload(txDataOffset)
            }

            function getFrom(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 32))
            }

            function getTo(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 64))
            }

            function getFeeToken(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 96))
            }

            function getErgsLimit(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 128))
            }

            function getTxPubdataPrice(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 160))
            }

            function getErgsPrice(txDataOffset) -> ret {
                ret := mload(add(txDataOffset, 192))
            }

            function ZKSYNC_NEAR_CALL_validateAndExecuteTx(
                abi,
                isL1Tx, 
                txDataOffset,
                operatorAddress
            ) -> ret {

                let tmpg := gas()
                if gt(tmpg, 300000) {
                    revert(0,0)
                }

                // let innerTxDataOffset := add(txDataOffset, 32)

                // if iszero(isL1Tx) {
                //     let isAcceptedByInitiator := validateTx(txDataOffset)
                //     if iszero(isAcceptedByInitiator) {
                //         // We should not have accepted this transaction,
                //         // since it will not pay us the fee.
                //         revert(0,0)
                //     }   
                // }

                // if iszero(isL1Tx) {
                //     let ergsLimit := getErgsLimit(innerTxDataOffset)
                //     let feeToken := getFeeToken(innerTxDataOffset)
                //     let ergsPrice := getErgsPrice(innerTxDataOffset)
                //     let from := getFrom(innerTxDataOffset)
                    
                //     // Firstly, we pull all the fee from the account:
                //     ensurePullToken(
                //         from,
                //         operatorAddress,
                //         mul(ergsPrice, ergsLimit),
                //         feeToken
                //     )
                //     ret := executeL2Tx(txDataOffset)

                //     // The overhead of repaying fees that should include the potential costs
                //     // of doing the transfer
                //     // TODO: calculate it dynamically depending on the ergsPerPubdataByte
                //     let REPAYING_FEES_OVERHEAD := 10000
                //     let gasLeft := gas()

                //     // if eq(ergsLimit, 300000) {
                //     //     revert(0,0)
                //     // }
                    
                //     // if and(gt(gasLeft, REPAYING_FEES_OVERHEAD), lt(sub(gasLeft, REPAYING_FEES_OVERHEAD), ergsLimit)) {
                //     //     // Returning back the funds to the operator.                       
                //     //     ensurePullToken(
                //     //         operatorAddress,
                //     //         from,
                //     //         mul(ergsPrice, sub(gasLeft, REPAYING_FEES_OVERHEAD)),
                //     //         feeToken
                //     //     )
                //     // }
                // }
                // // Instead of `else` we write it here:
                // if isL1Tx {
                //     ret := executeL1Tx(txDataOffset)
                // }
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                abort()
            }
            
            // This function returns 0 is `val` is 0 and 1 if `val` is non-zero.
            // The iszero(val) returns 1 if `val` is 0 and 0 otherwise.
            // The second iszero inverts it and we get the desired result.
            function getSafeBoolean(val) -> ret {
                ret := iszero(iszero(val))
            }

            // Prepends the selector before the txDataOffset,
            // preparing it to be used to call either `verify` or `execute`.
            // Returns the pointer to the calldata.
            function prependSelector(txDataOffset, selector) -> ret {
                // Note, that this overrides 32 bytes before the current transaction:
                
                let calldataPtr := sub(txDataOffset, 4)
                // Note, that since `mstore` stores 32 bytes at once, we need to 
                // actually store the selector in one word starting with the 
                // (txDataOffset - 32) = (calldataPtr - 28)
                mstore(sub(calldataPtr, 28), selector)

                ret := calldataPtr
            }

            function min(x,y) -> ret {
                ret := y
                if lt(x,y) {
                    ret := x
                }
            }

            // Validates the transaction again the senders' AA.
            // Returns `true` or `false` based on whether the execution should
            // continue.
            function validateTx(txDataOffset) -> ret {
                // The bytes [txDataOffset-4..txDataOffset-1] are to be used 
                // as the selector for validateTransaction call on the AA.
                // We don't expect the operator to set the selector properly.

                let calldataPtr := prependSelector(txDataOffset, 0xc6159fce)

                let txInnerDataOffset := add(txDataOffset, 32)

                let from := getFrom(txInnerDataOffset)
                let len := getDataLength(txInnerDataOffset)

                // The first word is formal, but still required by the ABI
                // We also should take into account the selector.
                let fullLen := add(len, 36)
                let VALIDATE_TX_ERGS_LIMIT := 100000

                let gasLimit := min(VALIDATE_TX_ERGS_LIMIT, gas())

                // The call itself.
                ret := call(
                    gasLimit, // The number of ergs to pass.
                    from, // The address to call.
                    0, // The `value` to pass (always zero on zkSync).
                    calldataPtr, // The pointer to the calldata.
                    fullLen, // The size of the calldata, which is 4 for the selector + the actual length of the struct.
                    0, // The pointer where the returned data will be written.
                    0 // The output has size of 32 (a single bool is expected)
                )
            }

            function executeL1Tx(txDataOffset) -> ret {
                let innerTxDataOffset := add(txDataOffset, 32)

                let to := getTo(innerTxDataOffset)
                let from := getFrom(innerTxDataOffset)
                let len := getDataLength(innerTxDataOffset)
                let dataPtr := getDataPtr(innerTxDataOffset)
                
                let dataLength := mload(dataPtr)
                let data := add(dataPtr, 32)

                ret := mimicCallOnlyResult(
                    to,
                    from,
                    dataPtr,
                    0
                )
            }

            // Returns `true` or `false` depending on whether or not the tx has reverted.
            function executeL2Tx(txDataOffset) -> ret {
                // The bytes [txDataOffset-4..txDataOffset-1] are to be used 
                // as the selector for executeTransaction call on the AA.
                // We don't expect the operator to set the selector properly.
                // (But probably we could optimize even further by assuming that, 
                // so we should look into it.)

                let calldataPtr := prependSelector(txDataOffset, 0x9f56dc13)

                let innerTxDataOffset := add(txDataOffset, 32)

                let from := getFrom(innerTxDataOffset)
                let len := getDataLength(innerTxDataOffset)

                let fullLen := add(len, 36)

                // The call itself.
                ret := call(
                    gas(), // The number of ergs to pass.
                    from, // The address to call.
                    0, // The `value` to pass (always zero on zkSync).
                    calldataPtr, // The pointer to the calldata.
                    fullLen, // The size of the calldata, which is 4 for the selector + the actual length of the struct.
                    0,
                    0 // The output has size of 0
                )
            }

            // ERC-20 transfer that pulls the `amount` of `token`
            // from the `from` to the address `to` by doing a mimic-called ERC-20 `transfer`
            function ensurePullToken(
                from,
                to,
                amount,
                token
            ) {
                let data := 0
                // The length of the data selector + to + amount
                mstore(data, 68)
                mstore(add(data, 32), 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(add(data, 36), to)
                mstore(add(data, 68), amount)

                // It is possible that the transfer was technically successful,
                // but the balance of the operator was not updated. This is not a typical behaviour
                // of an ERC-20 token. It is a problem of the operator if he decides to allow 
                // paying fees with such tokens.
                let success := mimicCallOnlyResult(token, from, data, 0)

                if iszero(success) {
                    revert(0,0)
                }
            }

            // Here we need to implement some panicking logic.
            // This function should be called whenever we need to indicate
            // that irrecoverable error has happened.
            function abort() {
                revert(0,0)
            }

            // TODO: Maybe replace this function by dedicating a specific memory 
            // to the empty words. This way we could avoid reseting the value to zero
            // all the time.
            // TODO: make the `freeWord` functoin consistent with the `getFreeWords` one.
            function freeWord() -> ret {
                mstore(0x80, 0)
                ret := 0x80
            }
            
            // Allocates some number of free bytes.
            // It also resets them all to zero. 
            // TODO: Maybe in the future we could avoid resetting the values to zero.
            function getFreeWords(num) -> ret {
                for { let i := 0 } lt(i, num) { i:=add(i,1) } {
                    mstore(add(0x80, mul(i,0x20)), 0)
                }
                ret := 0x80
            }

            ///
            /// zkSync-specific utilities:
            ///

            function sendMessageToL1(isFirst, key, value) {
                // TODO: in the future, we could possibly optimize it, by writing a constant value
                // but for now, we keep the address derivation explicit for readability.
                // address constant META_CALL_ADDRESS = address((1<<16) - 1);
                let TO_L1_CALL_ADDRESS := sub(shl(16, 1), 1)

                // Note, that this is not the "normal" Ethereum call.
                // This just a call in specialized format to let the compiler
                // transpile it to L2->L1 message. We use this approach, since
                // L1->L2 messages can not be natively expressed in Solidity.
                let _ := call(
                    isFirst, 
                    TO_L1_CALL_ADDRESS, 
                    key, 
                    value, 
                    0, 
                    0,
                    0
                )
            }

            function getFarCallABI(
                dataPtr,
                ergsPassed,
                shardId,
                transitPage,
                constructorCall,
                considerOrigin,
                considerNewTx
            ) -> ret {
                let dataLength := mload(dataPtr)
                
                // The data offset
                ret := add(dataPtr, 0x20)
                ret := or(ret, shl(64, dataLength))
                ret := or(ret, shl(96, ergsPassed))
                // The next 64 bits are empty
                // result := or(result, shl(128, uint64(0))
                ret := or(ret, shl(192, shardId))
                ret := or(ret, shl(200, transitPage))
                ret := or(ret, shl(208, constructorCall))
                ret := or(ret, shl(216, considerOrigin))
                ret := or(ret, shl(224, considerNewTx))
            }

            // Does mimicCall, but does not care about the returned value
            function mimicCallOnlyResult(
                to,
                whoToMimic,
                data,
                isConstructor
            ) -> ret {
                let mimicCallAddr := 0x000000000000000000000000000000000000fffb

                let farCallAbi := getFarCallABI(
                    data,
                    gas(),
                    // Only rollup is supported for now
                    0,
                    0,
                    isConstructor,
                    0,
                    0
                )

                ret := call(to, mimicCallAddr, whoToMimic, farCallAbi, 0, 0, 0) 
            }


            function getMeta() -> ret {
                // TODO: in the future, we could possibly optimize it, by writing a constant value
                // but for now, we keep the address derivation explicit for readability.
                // address constant META_CALL_ADDRESS = address((1<<16) - 4);
                let META_CALL_ADDRESS := sub(shl(16, 1), 4)
                // Note, that similar to the `sendMessageToL1`, this staticcall here is not 
                // a "normal" call, but a special call used, that is replaced
                // to the request to the meta opcode at the compile time  
                ret := staticcall(0, META_CALL_ADDRESS, 0, 0, 0, 0)
            }

            function extractNumberFromMeta(meta, offset, size) -> ret {
                // Firstly, we delete all the bits after the field
                // The same as "uint256 shifted = (meta << (256 - size - offset)); "
                let shifted := shl(sub(256, add(size, offset)), meta)
                // Then we shift everything back
                // The same as "ret = (shifted >> (256 - size));"
                ret := shr(sub(256, size), shifted)
            }
            
            function getErgsPerPubdataByteBlock() -> ret {
                // ergs per pubdata limit in block 
                // is located at the [20..23] bytes of the meta
                let meta := getMeta()
                ret := extractNumberFromMeta(meta, 20, 4)      
            } 
        }
    }
}

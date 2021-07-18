//! { "cases": [ {
//!     "name": "complex1",
//!     "input": [
//!         {
//!             "entry": "complex1",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "complex2",
//!     "input": [
//!         {
//!             "entry": "complex2",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    function encryptSym(uint8 sym, uint8 keySym) private pure returns(uint8) {
        return uint8((uint16(sym) + keySym) % 256);
    }

    function decryptSym(uint8 sym, uint8 keySym) private pure returns(uint8) {
        uint16 symbol = sym;
        if (symbol < keySym) {
            symbol += 256;
        }
        return uint8(symbol - keySym);
    }

    uint8 constant SIZE = 10;
    uint8 constant KEY_SIZE = 4;
    
    function encrypt(uint8[SIZE] memory data, uint8[KEY_SIZE] memory key) private pure returns(uint8[SIZE] memory) {
        for(uint8 i = 0; i < SIZE; i++) {
            data[i] = encryptSym(data[i], key[i % KEY_SIZE]);
        }
        return data;
    }

    function decrypt(uint8[SIZE] memory data, uint8[KEY_SIZE] memory key) private pure returns(uint8[SIZE] memory) {
        for(uint8 i = 0; i < SIZE; i++) {
            data[i] = decryptSym(data[i], key[i % KEY_SIZE]);
        }
        return data;
    }

    function complex1() public pure returns(uint64) {
        uint8[SIZE] memory message = [1, 231, 55, 221, 22, 34, 118, 21, 89, 7];
        uint8[KEY_SIZE] memory key = [12, 255, 0, 12];

        uint8[SIZE] memory output = decrypt(encrypt(message, key), key);

        bool result = true;
        for(uint8 i = 0; i < SIZE; i++) {
            result = result && message[i] == output[i];
        }

        if (result) {
            return 1;
        } else {
            return 0;
        }
    }

    function complex2() public pure returns(uint64) {
        uint8[SIZE] memory message = [12, 128, 255, 0, 123, 12, 68, 192, 2, 19];
        uint8[KEY_SIZE] memory key = [17, 181, 64, 243];

        uint8[SIZE] memory output = decrypt(encrypt(message, key), key);

        bool result = true;
        for(uint8 i = 0; i < SIZE; i++) {
            result = result && message[i] == output[i];
        }

        if (result) {
            return 1;
        } else {
            return 0;
        }
    }
}
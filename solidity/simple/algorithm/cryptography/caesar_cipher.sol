//! { "cases": [ {
//!     "entry": "test_encrypt",
//!     "expected": 1
//! }, {
//!     "entry": "test_decrypt",
//!     "expected": 1
//! }, {
//!     "entry": "complex",
//!     "expected": 1
//! } ] }

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Test {
    uint8 constant SIZE = 10;

    function encrypt(uint8[SIZE] memory data, uint8 key) private pure returns(uint8[SIZE] memory) {
        for(uint8 i = 0; i < SIZE; i++) {
            data[i] = uint8((uint16(data[i]) + key) % 256);
        }
        return data;
    }

    function decrypt(uint8[SIZE] memory data, uint8 key) private pure returns(uint8[SIZE] memory) {
        return encrypt(data, uint8((256 - uint16(key)) % 256));
    }

    function test_encrypt() public pure returns(uint64) {
        uint8[SIZE] memory data = [12, 143, 213, 43, 85, 42, 98, 111, 224, 76];
        uint8[SIZE] memory output = encrypt(data, 117);
        if (output[0] == 129 &&
            output[1] == 4 &&
            output[2] == 74 &&
            output[3] == 160 &&
            output[4] == 202 &&
            output[5] == 159 &&
            output[6] == 215 &&
            output[7] == 228 &&
            output[8] == 85 &&
            output[9] == 193) {
            return 1;
        } else {
            return 0;
        }
    }

    function test_decrypt() public pure returns(uint64) {
        uint8[SIZE] memory data = [129, 4, 74, 160, 202, 159, 215, 228, 85, 193];
        uint8[SIZE] memory output = decrypt(data, 117);
        if (output[0] == 12 &&
            output[1] == 143 &&
            output[2] == 213 &&
            output[3] == 43 &&
            output[4] == 85 &&
            output[5] == 42 &&
            output[6] == 98 &&
            output[7] == 111 &&
            output[8] == 224 &&
            output[9] == 76) {
            return 1;
        } else {
            return 0;
        }
    }

    function complex() public pure returns(uint64) {
        uint8[SIZE] memory message = [1, 12, 55, 53, 213, 123, 45, 21, 12, 92];
        bool result = true;
        for(uint8 key = 0; key <= 100; key++) {
            uint8[SIZE] memory output = decrypt(encrypt(message, key), key);
            for(uint8 i = 0; i < SIZE; i++) {
                result = result && message[i] == output[i];
            }
        }
        if (result) {
            return 1;
        } else {
            return 0;
        }
    }
}
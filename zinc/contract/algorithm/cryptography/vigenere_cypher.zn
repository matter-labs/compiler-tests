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

fn encrypt_sym(sym: u8, key_sym: u8) -> u8 {
    ((sym as u16 + key_sym as u16) % 256 as u16) as u8
}

fn decrypt_sym(sym: u8, key_sym: u8) -> u8 {
    let mut symbol = sym as u16;
    if symbol < key_sym as u16 {
        symbol += 256 as u16;
    };
    (symbol - key_sym as u16) as u8
}

const SIZE: u8 = 10;
const KEY_SIZE: u8 = 4;

fn encrypt(mut data: [u8; SIZE], key: [u8; KEY_SIZE]) -> [u8; SIZE] {
    for i in 0..SIZE {
        data[i] = encrypt_sym(data[i], key[i % KEY_SIZE]);
    }
    data
}

fn decrypt(mut data: [u8; SIZE], key: [u8; KEY_SIZE]) -> [u8; SIZE] {
    for i in 0..SIZE {
        data[i] = decrypt_sym(data[i], key[i % KEY_SIZE]);
    }
    data
}

contract Test {
    pub fn complex1(self) -> u64 {
        let message = [1, 231, 55, 221, 22, 34, 118, 21, 89, 7];
        let key = [12, 255, 0, 12];

        let output = decrypt(encrypt(message, key), key);

        let mut result = true;
        for i in 0..SIZE {
            result = result && message[i] == output[i];
        }

        if result
            {1} else {0} as u64
    }

    pub fn complex2(self) -> u64 {
        let message = [12, 128, 255, 0, 123, 12, 68, 192, 2, 19];
        let key = [17, 181, 64, 243];

        let output = decrypt(encrypt(message, key), key);

        let mut result = true;
        for i in 0..SIZE {
            result = result && message[i] == output[i];
        }

        if result
            {1} else {0} as u64
    }
}
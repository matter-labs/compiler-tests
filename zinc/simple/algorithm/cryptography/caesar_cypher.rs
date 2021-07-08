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

const SIZE: u8 = 10;

fn encrypt(mut data: [u8; SIZE], key: u8) -> [u8; SIZE] {
    for i in 0..SIZE {
        data[i] = ((data[i] as u16 + key as u16) % (256 as u16)) as u8;
    }
    data
} 

fn decrypt(data: [u8; SIZE], key: u8) -> [u8; SIZE] {
    encrypt(data, ((256 - key as u16) % 256) as u8)
}

fn test_encrypt() -> u64 {
    let data = [12, 143, 213, 43, 85, 42, 98, 111, 224, 76];
    let output = encrypt(data, 117);
    if output[0] == 129 &&
        output[1] == 4 &&
        output[2] == 74 &&
        output[3] == 160 &&
        output[4] == 202 &&
        output[5] == 159 &&
        output[6] == 215 &&
        output[7] == 228 &&
        output[8] == 85 &&
        output[9] == 193
        {1} else {0} as u64
}

fn test_decrypt() -> u64 {
    let data = [129, 4, 74, 160, 202, 159, 215, 228, 85, 193];
    let output = decrypt(data, 117);
    if output[0] == 12 &&
        output[1] == 143 &&
        output[2] == 213 &&
        output[3] == 43 &&
        output[4] == 85 &&
        output[5] == 42 &&
        output[6] == 98 &&
        output[7] == 111 &&
        output[8] == 224 &&
        output[9] == 76
        {1} else {0} as u64
}

fn complex() -> u64 {
    let message = [1, 12, 55, 53, 213, 123, 45, 21, 12, 92];
    let mut result = true;
    for key in 0..=100 {
        let output = decrypt(encrypt(message, key), key);
        for i in 0..SIZE {
            result = result && message[i] == output[i];
        }
    }
    if result
        {1} else {0} as u64
}
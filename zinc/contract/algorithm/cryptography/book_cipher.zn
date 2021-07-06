//! { "cases": [ {
//!     "entry": "complex1",
//!     "expected": 1
//! }, {
//!     "entry": "complex2",
//!     "expected": 1
//! } ] }

const KEY_SZ: u8 = 4;
const KEY: [[[u8; KEY_SZ]; KEY_SZ]; KEY_SZ] = 
[
    [
        [10, 33, 26, 15],
        [32, 62, 43, 58],
        [3, 8, 45, 23],
        [13, 55, 30, 21]
    ], [
        [11, 22, 9, 2],
        [28, 52, 38, 27],
        [61, 53, 56, 37],
        [5, 25, 39, 59]
    ], [
        [19, 36, 4, 48],
        [51, 0, 44, 35],
        [54, 46, 6, 60],
        [14, 31, 63, 29]
    ], [
        [40, 7, 20, 50],
        [41, 12, 49, 16],
        [18, 17, 57, 34],
        [42, 24, 1, 47]
    ]
];

const SIZE: u8 = 10;
const ALPHABET: u8 = 64;

fn encrypt(mut data: [u8; SIZE]) -> [u8; SIZE] {
    for i in 0..SIZE {
        let mut fl = false;
        for page in 0..KEY_SZ {
            for row in 0..KEY_SZ {
                for col in 0..KEY_SZ {
                    if KEY[page][row][col] == data[i] {
                        data[i] = page*KEY_SZ*KEY_SZ + row*KEY_SZ + col;
                        fl = true;
                        break;
                    }
                }
                if fl {
                    break;
                }
            }
            if fl {
                break;
            }
        }
    }
    data
}

fn decrypt(mut data: [u8; SIZE]) -> [u8; SIZE] {
    for i in 0..SIZE {
        let page = data[i] / (KEY_SZ * KEY_SZ);
        let ost = data[i] % (KEY_SZ * KEY_SZ);
        let row = ost / KEY_SZ;
        let col = ost % KEY_SZ;
        data[i] = KEY[page][row][col];
    }
    data
}

fn complex1() -> u64 {
    let message = [1, 12, 55, 53, 22, 34, 45, 21, 12, 7];

    let output = decrypt(encrypt(message));

    let mut result = true;
    for i in 0..SIZE {
        result = result && message[i] == output[i];
    }

    if result
        {1} else {0} as u64
}

fn complex2() -> u64 {
    let message = [37, 11, 2, 59, 0, 63, 41, 27, 17, 9];

    let output = decrypt(encrypt(message));

    let mut result = true;
    for i in 0..SIZE {
        result = result && message[i] == output[i];
    }

    if result
        {1} else {0} as u64
}
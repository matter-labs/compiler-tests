;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "1",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "1",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201",
;!         "0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "2",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "2",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302",
;!         "0x0100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "3",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "3",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403",
;!         "0x020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "4",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "4",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504",
;!         "0x03020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "5",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "5",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605",
;!         "0x0403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "6",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "6",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706",
;!         "0x050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "7",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "7",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807",
;!         "0x06050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "8",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "8",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908",
;!         "0x0706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "9",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "9",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09",
;!         "0x080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "10",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "10",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A",
;!         "0x09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "11",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "11",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B",
;!         "0x0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "12",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "12",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C",
;!         "0x0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "13",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "13",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D",
;!         "0x0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "14",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "14",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E",
;!         "0x0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "15",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "15",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F",
;!         "0x0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "16",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "16",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716151413121110",
;!         "0x0F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "17",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "17",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211",
;!         "0x100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "18",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "18",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918171615141312",
;!         "0x11100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "19",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "19",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716151413",
;!         "0x1211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "20",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "20",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514",
;!         "0x131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "21",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "21",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918171615",
;!         "0x14131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "22",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "22",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716",
;!         "0x1514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "23",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "23",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817",
;!         "0x161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "24",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "24",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918",
;!         "0x17161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "25",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "25",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19",
;!         "0x1817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "26",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "26",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A",
;!         "0x191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "27",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "27",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B",
;!         "0x1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFF"
;!     ]
;! }, {
;!     "name": "28",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "28",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C",
;!         "0x1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFF"
;!     ]
;! }, {
;!     "name": "29",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "29",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D",
;!         "0x1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFF"
;!     ]
;! }, {
;!     "name": "30",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "30",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E",
;!         "0x1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFF"
;!     ]
;! }, {
;!     "name": "31",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "31",
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F",
;!         "0x1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FF"
;!     ]
;! } ] }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "E-p:256:256-i8:256:256:256-i256:256:256-S32-a:256:256"
target triple = "syncvm"

declare i32 @__personality()

; Function Attrs: noreturn nounwind
define i256 @__entry(i256 %0, i256 %1, i1 %2) local_unnamed_addr #0 personality i32 ()* @__personality {
entry:
  br i1 %2, label %deploy, label %runtime
deploy:
  tail call void @__constructor()
  unreachable

runtime:
  %cell_1 = load i256, i256 addrspace(2)* inttoptr(i256 0 to i256 addrspace(2)*), align 32
  %cell_2 = load i256, i256 addrspace(2)* inttoptr(i256 32 to i256 addrspace(2)*), align 32
  %offset = load i256, i256 addrspace(2)* inttoptr(i256 64 to i256 addrspace(2)*), align 32
  %loaded = load i256, i256 addrspace(2)* inttoptr(i256 96 to i256 addrspace(2)*), align 32

  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %cell_2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %offset_ptr = inttoptr i256 %offset to i256 addrspace(1)*
  store i256 %loaded, i256 addrspace(1)* %offset_ptr, align 1

  %abi_data = shl i256 64, 64
  tail call void @llvm.syncvm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
define private void @__constructor() local_unnamed_addr #0 personality i32 ()* @__personality {
  store i256 32, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 0, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 64
  tail call void @llvm.syncvm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.syncvm.return(i256) #0

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }

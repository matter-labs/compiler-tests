;! { "cases": [ {
;!     "name": "0",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0xDEADBEEFDEADBEEFDE363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "1",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "1",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFF3534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "2",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "2",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E000000000000000000000000000000000000000000000000000000000000",
;!                "0x000000000000000000000034333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "3",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "3",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1DDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!                "0xADBEEFDEADBEEFDEADBEEFDE333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "4",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "4",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFF3231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "5",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "5",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B000000000000000000000000000000000000000000000000000000",
;!                "0x000000000000000000000000000031302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "6",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "6",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1ADEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!                "0xBEEFDEADBEEFDEADBEEFDEADBEEFDE302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "7",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "7",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "8",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "8",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918000000000000000000000000000000000000000000000000",
;!                "0x00000000000000000000000000000000002E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "9",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "9",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBE",
;!                "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "10",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "10",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "11",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "11",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918171615000000000000000000000000000000000000000000",
;!                "0x00000000000000000000000000000000000000002B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "12",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "12",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "13",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "13",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716151413FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "14",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "14",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A1918171615141312000000000000000000000000000000000000",
;!                "0x0000000000000000000000000000000000000000000000282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "15",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "15",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211DEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!                "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE2726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "16",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "16",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A19181716151413121110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "17",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "17",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F000000000000000000000000000000",
;!                "0x0000000000000000000000000000000000000000000000000000252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "18",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "18",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0EDEADBEEFDEADBEEFDEADBEEFDEAD",
;!                "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE2423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "19",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "19",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0DFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "20",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "20",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C000000000000000000000000",
;!                "0x0000000000000000000000000000000000000000000000000000000000222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "21",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "21",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0BDEADBEEFDEADBEEFDEADBE",
;!                "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE2120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "22",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "22",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0AFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "23",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "23",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09000000000000000000",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "24",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "24",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908DEADBEEFDEADBEEF",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "0xDE5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "25",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "25",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807FFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFF5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "26",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "26",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706000000000000",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "0x0000005C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "27",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "27",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605DEADBEEFDE",
;!                "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!                "0xADBEEFDE5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "28",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "28",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504FFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFF5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "29",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "29",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403000000",
;!                "0x0000000000000000000000000000000000000000000000000000000000000000",
;!                "0x000000000000595857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "30",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!                "30",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302DEAD",
;!                "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!                "0xBEEFDEADBEEFDE5857565554553251504F4E4D4C4B4A49484746454443424140"
;!     ]
;! }, {
;!     "name": "31",
;!     "input": [
;!         {
;!             "fallback": true,
;!             "calldata": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "31",
;!                "41"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201FF",
;!                "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!                "0xFFFFFFFFFFFFFFFF57565554553251504F4E4D4C4B4A49484746454443424140"
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
  %cell_3 = load i256, i256 addrspace(2)* inttoptr(i256 64 to i256 addrspace(2)*), align 32
  %value = load i256, i256 addrspace(2)* inttoptr(i256 96 to i256 addrspace(2)*), align 32
  %offset = load i256, i256 addrspace(2)* inttoptr(i256 128 to i256 addrspace(2)*), align 32
  %size = load i256, i256 addrspace(2)* inttoptr(i256 160 to i256 addrspace(2)*), align 32

  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %cell_2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  store i256 %cell_3, i256 addrspace(1)* inttoptr (i256 64 to i256 addrspace(1)*), align 32

  %offset_ptr = inttoptr i256 %offset to i256 addrspace(1)*
  call void @__memset_uma_as1(i256 addrspace(1)* align 1 %offset_ptr, i256 %value, i256 %size, i1 false)

  %abi_data = shl i256 96, 64
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

declare void @__memset_uma_as1(i256 addrspace(1)*, i256, i256, i1)

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }

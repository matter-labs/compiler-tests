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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!                "0"
;!             ]
;!         }
;!     ],
;!     "expected": [
;!                "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!                "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!                "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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

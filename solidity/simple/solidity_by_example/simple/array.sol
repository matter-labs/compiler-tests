//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "push",
//!             "calldata": [
//!                 "10"
//!             ]
//!         }, {
//!             "entry": "getLength",
//!             "calldata": [
//!             ],
//!              "expected": [
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "10"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "push",
//!             "calldata": [
//!                 "37848742"
//!             ]
//!         }, {
//!             "entry": "push",
//!             "calldata": [
//!                 "523542342"
//!             ]
//!         }, {
//!             "entry": "pop",
//!             "calldata": [
//!             ]
//!         }, {
//!             "entry": "getLength",
//!             "calldata": [
//!             ],
//!              "expected": [
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "push",
//!             "calldata": [
//!                 "78347834"
//!             ]
//!         }, {
//!             "entry": "push",
//!             "calldata": [
//!                 "23515365423543245"
//!             ]
//!         }, {
//!             "entry": "remove",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "getLength",
//!             "calldata": [
//!             ],
//!              "expected": [
//!                 "3"
//!             ]
//!         }, {
//!             "entry": "getArr",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0x20",
//!         "3",
//!         "37848742",
//!         "0",
//!         "23515365423543245"
//!     ]
//! }, {
//!     "name": "popEmpty",
//!     "input": [
//!         {
//!             "entry": "pop",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [ {
//!         "compiler_version": "<0.8",
//!         "return_data": [],
//!         "exception": true
//!     }, {
//!         "compiler_version": ">=0.8",
//!         "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000003100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!     } ]
//! }, {
//!     "name": "defaultGetter",
//!     "input": [
//!         {
//!             "entry": "arr2",
//!             "calldata": [
//!                 "0"
//!             ],
//!              "expected": [
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "arr2",
//!             "calldata": [
//!                 "1"
//!             ],
//!              "expected": [
//!                 "2"
//!             ]
//!         }, {
//!             "entry": "arr2",
//!             "calldata": [
//!                 "2"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "3"
//!     ]
//! }, {
//!     "name": "fixedSizeArray",
//!     "input": [
//!         {
//!             "entry": "myFixedSizeArr",
//!             "calldata": [
//!                 "9"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "examples",
//!     "input": [
//!         {
//!             "entry": "examples",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Test {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function examples() external {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}

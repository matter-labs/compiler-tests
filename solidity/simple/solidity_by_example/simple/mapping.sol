//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "1", "10"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "1"
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
//!             "entry": "set",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!                 "1234"
//!             ]
//!         }, {
//!             "entry": "remove",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "third",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!                 "12345"
//!             ]
//!         }, {
//!             "entry": "set",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
//!                 "123456"
//!             ]
//!         }, {
//!             "entry": "remove",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "123456"
//!     ]
//! } ] }


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Test {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}

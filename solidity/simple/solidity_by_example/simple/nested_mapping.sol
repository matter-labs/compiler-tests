//! { "cases": [ {
//!     "name": "first",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "1",
//!                 "1",
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "1",
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! }, {
//!     "name": "second",
//!     "input": [
//!         {
//!             "entry": "set",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!                 "784563478547835256342389483254",
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "remove",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!                 "784563478547835256342389483254"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!                 "784563478547835256342389483254"
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
//!                 "453453453464564564564500",
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "set",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!                 "453453453464564564564501",
//!                 "1"
//!             ]
//!         }, {
//!             "entry": "remove",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!                 "453453453464564564564500"
//!             ]
//!         }, {
//!             "entry": "get",
//!             "calldata": [
//!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!                 "453453453464564564564501"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "1"
//!     ]
//! } ] }


// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Test {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}

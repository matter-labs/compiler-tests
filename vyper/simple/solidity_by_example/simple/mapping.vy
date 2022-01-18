#! { "cases": [ {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "set",
#!             "calldata": [
#!                 "1", "10"
#!             ]
#!         }, {
#!             "entry": "get",
#!             "calldata": [
#!                 "1"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
#!                 "1234"
#!             ]
#!         }, {
#!             "entry": "remove",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!             ]
#!         }, {
#!             "entry": "get",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "third",
#!     "input": [
#!         {
#!             "entry": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
#!                 "12345"
#!             ]
#!         }, {
#!             "entry": "set",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
#!                 "123456"
#!             ]
#!         }, {
#!             "entry": "remove",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
#!             ]
#!         }, {
#!             "entry": "get",
#!             "calldata": [
#!                 "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "123456"
#!     ]
#! } ] }

# Mapping from address to uint
myMap: public(HashMap[address, uint256])

@external
@view
def get(_addr: address) -> uint256:
    # Mapping always returns a value.
    # If the value was never set, it will return the default value.
    return self.myMap[_addr]

@external
def set(_addr: address, _i: uint256):
    self.myMap[_addr] = _i

@external
def remove(_addr: address):
    # Reset the value to the default value.
    self.myMap[_addr] = empty(uint256)

#! { "cases": [ {
#!     "name": "init_value",
#!     "input": [
#!         {
#!             "entry": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "first",
#!     "input": [
#!         {
#!             "entry": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "entry": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! }, {
#!     "name": "second",
#!     "input": [
#!         {
#!             "entry": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "entry": "inc",
#!             "calldata": [
#!             ]
#!         }, {
#!             "entry": "dec",
#!             "calldata": [
#!             ]
#!         }, {
#!             "entry": "count",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "1"
#!     ]
#! } ] }

count: public(uint256)

# Function to get the current count
@external
@view
def get() -> uint256:
    return self.count

# Function to increment count by 1
@external
def inc():
    self.count += 1

# Function to decrement count by 1
@external
def dec():
    self.count -= 1

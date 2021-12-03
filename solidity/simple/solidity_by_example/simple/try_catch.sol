//! { "ignore": true, "cases": [ {
//!     "name": "tryCatchExternalCallFailed",
//!     "input": [
//!         {
//!             "entry": "tryCatchExternalCall",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "0xcf34ef537ac33ee1ac626ca1587a0a7e8e51561e5514f8cb36afa1c5102b3bab"
//!                 ],
//!                 "values": [
//!                     "0x20",
//!                     "20",
//!                     "0x65787465726e616c2063616c6c206661696c6564000000000000000000000000"
//!                 ]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "tryCatchExternalCallOk",
//!     "input": [
//!         {
//!             "entry": "tryCatchExternalCall",
//!             "calldata": [
//!                 "1"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "0xcf34ef537ac33ee1ac626ca1587a0a7e8e51561e5514f8cb36afa1c5102b3bab"
//!                 ],
//!                 "values": [
//!                     "0x20",
//!                     "18",
//!                     "0x6d792066756e63207761732063616c6c65640000000000000000000000000000"
//!                 ]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "tryCatchNewContractError",
//!     "input": [
//!         {
//!             "entry": "tryCatchNewContract",
//!             "calldata": [
//!                 "0x0000000000000000000000000000000000000000"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "0xcf34ef537ac33ee1ac626ca1587a0a7e8e51561e5514f8cb36afa1c5102b3bab"
//!                 ],
//!                 "values": [
//!                     "0x20",
//!                     "15",
//!                     "0x696e76616c696420616464726573730000000000000000000000000000000000"
//!                 ]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "tryCatchNewContractErrorBytes",
//!     "input": [
//!         {
//!             "entry": "tryCatchNewContract",
//!             "calldata": [
//!                 "0x0000000000000000000000000000000000000001"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "0x532fd6ea96cfb78bb46e09279a26828b8b493de1a2b8b1ee1face527978a15a5"
//!                 ],
//!                 "values": [
//!                     "0x20",
//!                     "0"
//!                 ]
//!             }
//!         ]
//!     }
//! }, {
//!     "name": "tryCatchNewContractOk",
//!     "input": [
//!         {
//!             "entry": "tryCatchNewContract",
//!             "calldata": [
//!                 "0x0000000000000000000000000000000000000002"
//!             ]
//!         }
//!     ],
//!     "expected": {
//!         "return_data": [
//!         ],
//!         "events": [
//!             {
//!                 "topics": [
//!                     "0xcf34ef537ac33ee1ac626ca1587a0a7e8e51561e5514f8cb36afa1c5102b3bab"
//!                 ],
//!                 "values": [
//!                     "0x20",
//!                     "11",
//!                     "0x466f6f2063726561746564000000000000000000000000000000000000000000"
//!                 ]
//!             }
//!         ]
//!     }
//! } ] }

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

// External contract used for try / catch examples
contract Foo {
    address public owner;

    constructor(address _owner) {
        require(_owner != address(0), "invalid address");
        assert(_owner != 0x0000000000000000000000000000000000000001);
        owner = _owner;
    }

    function myFunc(uint x) public pure returns (string memory) {
        require(x != 0, "require failed");
        return "my func was called";
    }
}

contract Test {
    event Log(string message);
    event LogBytes(bytes data);

    Foo public foo;

    constructor() {
        // This Foo contract is used for example of try catch with external call
        foo = new Foo(msg.sender);
    }

    // Example of try / catch with external call
    // tryCatchExternalCall(0) => Log("external call failed")
    // tryCatchExternalCall(1) => Log("my func was called")
    function tryCatchExternalCall(uint _i) public {
        try foo.myFunc(_i) returns (string memory result) {
            emit Log(result);
        } catch {
            emit Log("external call failed");
        }
    }

    // Example of try / catch with contract creation
    // tryCatchNewContract(0x0000000000000000000000000000000000000000) => Log("invalid address")
    // tryCatchNewContract(0x0000000000000000000000000000000000000001) => LogBytes("")
    // tryCatchNewContract(0x0000000000000000000000000000000000000002) => Log("Foo created")
    function tryCatchNewContract(address _owner) public {
        try new Foo(_owner) returns (Foo foo) {
            // you can use variable foo here
            emit Log("Foo created");
        } catch Error(string memory reason) {
            // catch failing revert() and require()
            emit Log(reason);
        } catch (bytes memory reason) {
            // catch failing assert()
            emit LogBytes(reason);
        }
    }
}

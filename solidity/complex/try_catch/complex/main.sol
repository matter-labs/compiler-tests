// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

import "./callable.sol";

contract Main {
    /*function createError(uint reason) public returns(bytes memory) {
        try new Callable(reason) {
            return "";
        } catch Error(string memory reason) {
            return bytes(reason);
        } catch(bytes memory reason) {
            return reason;
        }
    }*/

    function callError(uint reason) public returns(bytes memory) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(reason) {
            return "";
        } catch Error(string memory reason) {
            return bytes(reason);
        } catch(bytes memory reason) {
            return reason;
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "./callable.sol";

contract Main {
    function withoutMessage(uint reason) public returns(bool) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(reason) {
            return true;
        } catch {
            return false;
        }
    }

    function withMessage(uint _reason) public returns(bytes memory) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(_reason) {
            return "";
        } catch(bytes memory reason) {
            return reason;
        }
    }

    function withStringMessage(uint _reason) public returns(string memory) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(_reason) {
            return "";
        } catch Error(string memory reason) {
            return reason;
        } catch {
            return "";
        }
    }
}
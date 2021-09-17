// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./callable.sol";

contract Main {
    /*function createWithoutMessage(uint reason) public returns(bool) {
        try new Callable(reason) {
            return true;
        } catch {
            return false;
        }
    }

    function createWithMessage(uint _reason) public returns(bytes memory) {
        try new Callable(_reason) {
            return "";
        } catch(bytes memory reason) {
            return reason;
        }
    }*/

    function callWithoutMessage(uint reason) public returns(bool) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(reason) {
            return true;
        } catch {
            return false;
        }
    }

    function callWithMessage(uint _reason) public returns(bytes memory) {
        Callable callable = Callable(0x0000000000000000000000000000000000000002);
        try callable.f(_reason) {
            return "";
        } catch(bytes memory reason) {
            return reason;
        }
    }
}
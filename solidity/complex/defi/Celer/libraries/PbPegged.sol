// SPDX-License-Identifier: GPL-3.0-only

// Code generated by protoc-gen-sol. DO NOT EDIT.
// source: contracts/libraries/proto/pegged.proto
pragma solidity >=0.8.10;
import "./Pb.sol";

library PbPegged {
    using Pb for Pb.Buffer; // so we can call Pb funcs on Buffer obj

    struct Mint {
        address token; // tag: 1
        address account; // tag: 2
        uint256 amount; // tag: 3
        address depositor; // tag: 4
        uint64 refChainId; // tag: 5
        bytes32 refId; // tag: 6
    } // end struct Mint

    function decMint(bytes memory raw) internal pure returns (Mint memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint256 tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {}
            // solidity has no switch/case
            else if (tag == 1) {
                m.token = Pb._address(buf.decBytes());
            } else if (tag == 2) {
                m.account = Pb._address(buf.decBytes());
            } else if (tag == 3) {
                m.amount = Pb._uint256(buf.decBytes());
            } else if (tag == 4) {
                m.depositor = Pb._address(buf.decBytes());
            } else if (tag == 5) {
                m.refChainId = uint64(buf.decVarint());
            } else if (tag == 6) {
                m.refId = Pb._bytes32(buf.decBytes());
            } else {
                buf.skipValue(wire);
            } // skip value of unknown tag
        }
    } // end decoder Mint

    struct Withdraw {
        address token; // tag: 1
        address receiver; // tag: 2
        uint256 amount; // tag: 3
        address burnAccount; // tag: 4
        uint64 refChainId; // tag: 5
        bytes32 refId; // tag: 6
    } // end struct Withdraw

    function decWithdraw(bytes memory raw) internal pure returns (Withdraw memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint256 tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {}
            // solidity has no switch/case
            else if (tag == 1) {
                m.token = Pb._address(buf.decBytes());
            } else if (tag == 2) {
                m.receiver = Pb._address(buf.decBytes());
            } else if (tag == 3) {
                m.amount = Pb._uint256(buf.decBytes());
            } else if (tag == 4) {
                m.burnAccount = Pb._address(buf.decBytes());
            } else if (tag == 5) {
                m.refChainId = uint64(buf.decVarint());
            } else if (tag == 6) {
                m.refId = Pb._bytes32(buf.decBytes());
            } else {
                buf.skipValue(wire);
            } // skip value of unknown tag
        }
    } // end decoder Withdraw
}

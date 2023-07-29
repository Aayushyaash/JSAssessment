// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Write a smart contract and make it upgradeable using a proxy contract.
contract C1 {
    uint256 public value;

    function add(uint256 num) public {
        value = num;
    }
}

contract D1 {
    uint256 public value;

    function add(address _c1, uint256 num) public {
        (bool success, bytes memory data) = _c1.delegatecall(
            abi.encodeWithSignature("add(uint256)", num)
        );
        require(success, "Delegate call failed.");
    }
}

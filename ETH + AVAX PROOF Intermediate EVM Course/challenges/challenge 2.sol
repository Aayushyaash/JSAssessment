// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// For this challenge, write a smart contract that uses view, pure, and payable functions. 
// Ensure that the functions are accessible within the contract and derived contracts as well.

contract C1 {
    uint256 public value = 100;

    function getValue() public view returns (uint256) {
        return value;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

contract D1 is C1 {
    function deposit() public payable {
        value += msg.value;
    }
}

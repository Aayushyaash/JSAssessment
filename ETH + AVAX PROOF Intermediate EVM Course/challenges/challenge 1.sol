// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Write a smart contract that allows only the admin to access and call all the functions of the contract.
// Hint: use modifiers to restrict access

contract Challenge_1 {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    function add(uint a, uint b) public view onlyOwner returns (uint) {
        return a + b;
    }
}

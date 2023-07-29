// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Write a smart contract that has both storage and memory types of variables in it.

contract Challenge_5 {
    uint public value = 100;

    function add(uint num) public view returns (uint) {
        return value + num;
    }
}

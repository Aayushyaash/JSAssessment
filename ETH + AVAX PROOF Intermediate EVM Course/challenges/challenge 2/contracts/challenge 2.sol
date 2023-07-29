// Write a smart contract that defines and triggers 3-4 events
// Index the events so that they can be easily searched
// Capture these events in your JavaScript code

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Challenge_2 {
    event Add(uint indexed a, uint indexed b, uint indexed result);
    event Subtract(uint indexed a, uint indexed b, uint indexed result);
    event Multiply(uint indexed a, uint indexed b, uint indexed result);
    event Divide(uint indexed a, uint indexed b, uint indexed result);

    function add(uint a, uint b) public returns (uint) {
        emit Add(a, b, a + b);
        return a + b;
    }

    function subtract(uint a, uint b) public returns (uint) {
        emit Subtract(a, b, a - b);
        return a - b;
    }

    function multiply(uint a, uint b) public returns (uint) {
        emit Multiply(a, b, a * b);
        return a * b;
    }

    function divide(uint a, uint b) public returns (uint) {
        emit Divide(a, b, a / b);
        return a / b;
    }
}

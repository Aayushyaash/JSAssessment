/*
Write a smart contract that takes some ether from the user. Find out its value in units of:
1.wei
2.ether
3.gwei
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Challenge_2 {
    // converter

    uint256 weiValue;
    uint256 etherValue;
    uint256 gweiValue;

    function converter() public payable returns (uint256, uint256, uint256) {
        weiValue = msg.value;
        etherValue = weiValue / 1 ether;
        gweiValue = weiValue / 1 gwei;

        return (weiValue, etherValue, gweiValue);
    }
}

// Needs correction

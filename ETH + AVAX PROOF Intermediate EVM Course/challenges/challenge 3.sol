// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Challenge_3 {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    function getSenderAddress() public view returns (address) {
        return msg.sender;
    }

    function getbalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can withdraw.");
        require(balance >= amount, "Insufficient contract balance.");

        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    receive() external payable {
        balance += msg.value;
    }
}
